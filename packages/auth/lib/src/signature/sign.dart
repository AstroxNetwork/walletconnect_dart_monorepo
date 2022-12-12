import 'dart:convert';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pointycastle/export.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'sign.freezed.dart';

part 'sign.g.dart';

class Sign {
  const Sign._();

  static final SECP256K1_CURVE = ECCurve_secp256k1();
  static const CHAIN_ID_INC = 35;
  static const LOWER_REAL_V = 27;
  static final Q = BigInt.parse(
    'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f',
    radix: 16,
  );

  /// The v signature parameter starts at 37 because 1 is the first valid chainId so:
  /// chainId >= 1 implies that 2 * chainId + CHAIN_ID_INC >= 37.
  /// https://eips.ethereum.org/EIPS/eip-155
  static const replayProtectedVMin = 37;

  static final halfCurveOrder = SECP256K1_CURVE.n >> 1;
  static const messagePrefix = '\u0019Ethereum Signed Message:\n';

  static Uint8List getEthereumMessagePrefix(int messageLength) {
    return Uint8List.fromList(
      utf8.encode(messagePrefix + messageLength.toString()),
    );
  }

  static Uint8List getEthereumMessageHash(Uint8List message) {
    final prefix = getEthereumMessagePrefix(message.length);
    final result = [...prefix, ...message];
    final keccak = KeccakDigest(256);
    return keccak.process(Uint8List.fromList(result));
  }

  static SignatureData signPrefixedMessage(
    Uint8List message,
    ECKeyPair keyPair,
  ) {
    return signMessage(
      getEthereumMessageHash(message),
      keyPair,
      needToHash: false,
    );
  }

  static SignatureData signMessage(
    Uint8List message,
    ECKeyPair keyPair, {
    bool needToHash = true,
  }) {
    final publicKey = keyPair.publicKey;
    Uint8List messageHash;
    if (needToHash) {
      final keccak = KeccakDigest(256);
      messageHash = keccak.process(message);
    } else {
      messageHash = message;
    }
    final bytes = Uint8List.fromList(messageHash);
    final sig = keyPair.sign(bytes);

    return createSignatureData(sig, publicKey, bytes);
  }

  /// Signature without EIP-155 (Simple replay attack protection)
  /// https://eips.ethereum.org/EIPS/eip-155 To add EIP-155 call
  /// TransactionEncoder.createEip155SignatureData after that.
  static SignatureData createSignatureData(
    ECDSASignature sig,
    BigInt publicKey,
    Uint8List messageHash,
  ) {
    // Now we have to work backwards to figure out the recId needed to recover the signature.
    int recId = -1;
    for (int i = 0; i < 4; i++) {
      BigInt? k = recoverFromSignature(i, sig, messageHash);
      if (k != null && k == publicKey) {
        recId = i;
        break;
      }
    }
    if (recId == -1) {
      throw StateError(
        'Could not construct a recoverable key. Are your credentials valid?',
      );
    }

    int headerByte = recId + 27;

    // 1 header + 32 bytes for R + 32 bytes for S
    final v = Uint8List.fromList([headerByte]);
    final r = sig.r.toBytesPadded(32);
    final s = sig.s.toBytesPadded(32);

    return SignatureData(v, r, s);
  }

  /// Given the components of a signature and a selector value, recover and return the public key
  /// that generated the signature according to the algorithm in SEC1v2 section 4.1.6.
  ///
  /// <p>The recId is an index from 0 to 3 which indicates which of the 4 possible keys is the
  /// correct one. Because the key recovery operation yields multiple potential keys, the correct
  /// key must either be stored alongside the signature, or you must be willing to try each recId
  /// in turn until you find one that outputs the key you are expecting.
  ///
  /// <p>If this method returns null it means recovery was not possible and recId should be
  /// iterated.
  ///
  /// <p>Given the above two points, a correct usage of this method is inside a for loop from 0 to
  /// 3, and if the output is null OR a key that is not the one you expect, you try again with the
  /// next recId.
  ///
  /// [recId] Which possible key to recover.
  /// [sig] the R and S components of the signature, wrapped.
  /// [message] Hash of the data that was signed.
  ///
  /// return An ECKey containing only the public part, or null if recovery wasn't possible.
  static BigInt? recoverFromSignature(
    int recId,
    ECDSASignature sig,
    Uint8List message,
  ) {
    assert(recId >= 0 && recId <= 3, 'recId must be in the range of [0, 3]');
    assert(sig.r.sign >= 0, 'r must be positive');
    assert(sig.s.sign >= 0, 's must be positive');

    // 1.0 For j from 0 to h   (h == recId here and the loop is outside this function)
    //   1.1 Let x = r + jn
    BigInt n = SECP256K1_CURVE.n; // Curve order.
    BigInt i = BigInt.from(recId / 2);
    BigInt x = sig.r + i * n;
    //   1.2. Convert the integer x to an octet string X of length mlen using the conversion
    //        routine specified in Section 2.3.7, where mlen = ⌈(log2 p)/8⌉ or mlen = ⌈m/8⌉.
    //   1.3. Convert the octet string (16 set binary digits)||X to an elliptic curve point R
    //        using the conversion routine specified in Section 2.3.4. If this conversion
    //        routine outputs "invalid", then do another iteration of Step 1.
    //
    // More concisely, what these points mean is to use X as a compressed public key.
    BigInt prime = Q;
    if (x.compareTo(prime) >= 0) {
      // Cannot have point co-ordinates larger than this as everything takes place modulo Q.
      return null;
    }
    // Compressed keys require you to know an extra bit of data about the y-coord as there are
    // two possibilities. So it's encoded in the recId.
    ECPoint R = decompressKey(x, (recId & 1) == 1)!;
    //   1.4. If nR != point at infinity, then do another iteration of Step 1 (callers
    //        responsibility).
    if (!(R * n)!.isInfinity) {
      return null;
    }
    //   1.5. Compute e from M using Steps 2 and 3 of ECDSA signature verification.
    final e = message.toBigIntWithSign(1);
    //   1.6. For k from 1 to 2 do the following.   (loop is outside this function via
    //        iterating recId)
    //   1.6.1. Compute a candidate public key as:
    //               Q = mi(r) * (sR - eG)
    //
    // Where mi(x) is the modular multiplicative inverse. We transform this into the following:
    //               Q = (mi(r) * s ** R) + (mi(r) * -e ** G)
    // Where -e is the modular additive inverse of e, that is z such that z + e = 0 (mod n).
    // In the above equation ** is point multiplication and + is point addition (the EC group
    // operator).
    //
    // We can find the additive inverse by subtracting e from zero then taking the mod. For
    // example the additive inverse of 3 modulo 11 is 8 because 3 + 8 mod 11 = 0, and
    // -3 mod 11 = 8.
    final eInv = (BigInt.zero - e) % n;
    final rInv = sig.r.modInverse(n);
    final srInv = rInv * sig.s % n;
    final eInvrInv = rInv * eInv % n;
    final q =
        ECAlgorithms.sumOfTwoMultiplies(SECP256K1_CURVE.G, eInvrInv, R, srInv)!;

    final qBytes = q.getEncoded(false);
    // We remove the prefix
    return qBytes.sublist(1).toBigIntWithSign(1);
  }

  /// Decompress a compressed public key (x co-ord and low-bit of y-coord).
  static ECPoint? decompressKey(BigInt xBN, bool yBit) {
    const x9 = X9IntegerConverter();
    final compEnc = x9.integerToBytes(
      xBN,
      1 + x9.getByteLengthFromECCurve(SECP256K1_CURVE.curve),
    );
    compEnc[0] = yBit ? 0x03 : 0x02;
    return SECP256K1_CURVE.curve.decodePoint(compEnc);
  }

  /// Given an arbitrary piece of text and an Ethereum message signature encoded in bytes, returns
  /// the public key that was used to sign it. This can then be compared to the expected public key
  /// to determine if the signature was correct.
  ///
  /// [message] RLP encoded message.
  /// [signatureData] The message signature components
  ///
  /// return the public key used to sign the message
  /// throws SignatureException If the public key could not be recovered or if there was a
  ///     signature format error.
  static BigInt signedMessageToKey(
    Uint8List message,
    SignatureData signatureData,
  ) {
    return signedMessageHashToKey(
      KeccakDigest(256).process(message),
      signatureData,
    );
  }

  /// Given an arbitrary message and an Ethereum message signature encoded in bytes, returns the
  /// public key that was used to sign it. This can then be compared to the expected public key to
  /// determine if the signature was correct.
  ///
  /// [message] The message.
  /// [signatureData] The message signature components
  ///
  /// return the public key used to sign the message
  /// throws SignatureException If the public key could not be recovered or if there was a
  /// signature format error.
  static BigInt signedPrefixedMessageToKey(
    Uint8List message,
    SignatureData signatureData,
  ) {
    return signedMessageHashToKey(
      getEthereumMessageHash(message),
      signatureData,
    );
  }

  /// Given an arbitrary message hash and an Ethereum message signature encoded in bytes, returns
  /// the public key that was used to sign it. This can then be compared to the expected public key
  /// to determine if the signature was correct.
  ///
  /// [messageHash] The message hash.
  /// [signatureData] The message signature components
  ///
  /// return the public key used to sign the message
  /// throws SignatureException If the public key could not be recovered or if there was a
  ///     signature format error.
  static BigInt signedMessageHashToKey(
    Uint8List messageHash,
    SignatureData signatureData,
  ) {
    final r = signatureData.r;
    final s = signatureData.s;
    assert(r.length == 32, 'r must be 32 bytes');
    assert(s.length == 32, 's must be 32 bytes');

    int header = signatureData.v[0] & 0xFF;
    // The header byte: 0x1B = first key with even y, 0x1C = first key with odd y,
    //                  0x1D = second key with even y, 0x1E = second key with odd y
    if (header < 27 || header > 34) {
      throw StateError('Header byte out of range: $header');
    }

    final sig = ECDSASignature(r.toBigIntWithSign(1), s.toBigIntWithSign(1));

    final recId = header - 27;
    final key = recoverFromSignature(recId, sig, messageHash);
    if (key == null) {
      throw StateError('Could not recover public key from signature');
    }
    return key;
  }

  /// Returns recovery ID.
  ///
  /// [signatureData] The message signature components
  /// [chainId] of the network
  /// return int recovery ID
  static int getRecId(SignatureData signatureData, int chainId) {
    BigInt v = signatureData.v.toBigIntWithSign(1);
    BigInt lowerRealV = BigInt.from(LOWER_REAL_V);
    BigInt lowerRealVPlus1 = BigInt.from(LOWER_REAL_V + 1);
    BigInt lowerRealVReplayProtected = BigInt.from(Sign.replayProtectedVMin);
    BigInt chainIdInc = BigInt.from(CHAIN_ID_INC);
    if (v == lowerRealV || v == lowerRealVPlus1) {
      return (v - lowerRealV).toInt();
    } else if (v.compareTo(lowerRealVReplayProtected) >= 0) {
      return (v - BigInt.from(chainId) * BigInt.two - chainIdInc).toInt();
    } else {
      throw ArgumentError('Unsupported v parameter: $v');
    }
  }

  /// Returns the header 'v'.
  ///
  /// [recId] The recovery id.
  /// bytes header 'v'.
  static Uint8List getVFromRecId(int recId) {
    return Uint8List.fromList([LOWER_REAL_V + recId]);
  }

  /// Returns public key from the given private key.
  ///
  /// [privateKey] the private key to derive the public key from
  /// return [bigint] encoded public key
  static BigInt publicKeyFromPrivate(BigInt privateKey) {
    ECPoint point = publicPointFromPrivate(privateKey);

    Uint8List encoded = point.getEncoded(false);
    return encoded.sublist(1).toBigIntWithSign(1);
  }

  /// Returns public key point from the given private key.
  ///
  /// [privateKey] the private key to derive the public key from
  /// return [ECPoint] public key
  static ECPoint publicPointFromPrivate(BigInt privateKey) {
    /*
         * TODO: FixedPointCombMultiplier currently doesn't support scalars longer than the group
         * order, but that could change in future versions.
         */
    if (privateKey.bitLength > SECP256K1_CURVE.n.bitLength) {
      privateKey = privateKey % SECP256K1_CURVE.n;
    }
    return (SECP256K1_CURVE.G * privateKey)!;
  }

  /// Returns public key point from the given curve.
  ///
  /// [bits] representing the point on the curve
  /// return [bigint] encoded public key
  static BigInt publicFromPoint(Uint8List bits) {
    return bits.sublist(1).toBigIntWithSign(1); // remove prefix
  }
}

bool _testBit(BigInt i, int n) {
  return (i & (BigInt.one << n)) != BigInt.zero;
}

class ECAlgorithms {
  const ECAlgorithms._();

  static ECPoint? sumOfTwoMultiplies(ECPoint P, BigInt a, ECPoint Q, BigInt b) {
    var c = P.curve;

    if (c != Q.curve) {
      throw ArgumentError('P and Q must be on same curve');
    }

    // Point multiplication for Koblitz curves (using WTNAF) beats Shamir's trick
    // TODO: uncomment this when F2m available
    /*
    if( c is ECCurve.F2m ) {
      ECCurve.F2m f2mCurve = (ECCurve.F2m)c;
      if( f2mCurve.isKoblitz() ) {
        return P.multiply(a).add(Q.multiply(b));
      }
    }
    */

    return shamirsTrick(P, a, Q, b);
  }

  static ECPoint? shamirsTrick(ECPoint P, BigInt k, ECPoint Q, BigInt l) {
    var m = math.max(k.bitLength, l.bitLength);

    var Z = P + Q;
    var R = P.curve.infinity;

    for (var i = m - 1; i >= 0; --i) {
      R = R!.twice();

      if (_testBit(k, i)) {
        if (_testBit(l, i)) {
          R = R! + Z;
        } else {
          R = R! + P;
        }
      } else {
        if (_testBit(l, i)) {
          R = R! + Q;
        }
      }
    }

    return R;
  }
}

///
/// A class which converts integers to byte arrays, allowing padding and calculations
/// to be done according the the filed size of the curve or field element involved.
///
class X9IntegerConverter {
  const X9IntegerConverter();

  ///
  /// Return the curve's field size in bytes.
  ///
  /// @param c the curve of interest.
  /// @return the field size in bytes (rounded up).
  ///
  int getByteLengthFromECCurve(ECCurve c) {
    return (c.fieldSize + 7) ~/ 8;
  }

  ///
  /// Return the field element's field size in bytes.
  ///
  /// @param fe the field element of interest.
  /// @return the field size in bytes (rounded up).
  ///
  int getByteLengthFromECFieldElement(ECFieldElement fe) {
    return (fe.fieldSize + 7) ~/ 8;
  }

  ///
  ///Convert an integer to a byte array, ensuring it is exactly qLength long.
  ///
  /// @param s the integer to be converted.
  /// @param qLength the length
  /// @return the resulting byte array.
  ///
  Uint8List integerToBytes(BigInt s, int qLength) {
    final bytes = Uint8List.fromList(s.toBytes());

    if (qLength < bytes.length) {
      return bytes.sublist(bytes.length - qLength);
    } else if (qLength > bytes.length) {
      return Uint8List(qLength)..setAll(qLength - bytes.length, bytes);
    }
    return bytes;
  }
}

@freezed
class SignatureData with _$SignatureData {
  SignatureData._();

  const factory SignatureData(
    @Uint8ListToListIntConverter() Uint8List v,
    @Uint8ListToListIntConverter() Uint8List r,
    @Uint8ListToListIntConverter() Uint8List s,
  ) = _SignatureData;

  factory SignatureData.fromString(String signature) {
    final str = signature.trim().removePrefixIfExist();
    final chunked = str.chunked(64);
    assert(chunked.length == 3);
    final iv = int.parse(chunked[2], radix: 16);
    return SignatureData(
      (iv < 27 ? iv + 27 : iv).toRadixString(16).hexToBytes(),
      chunked[0].hexToBytes(),
      chunked[1].hexToBytes(),
    );
  }

  factory SignatureData.fromJson(Map<String, dynamic> json) =>
      _$SignatureDataFromJson(json);

  String toCacaoSignature() {
    return '0x${r.bytesToHex()}${s.bytesToHex()}${v.bytesToHex()}';
  }
}

@freezed
class ECKeyPair with _$ECKeyPair {
  ECKeyPair._();

  static const int PRIVATE_KEY_SIZE = 32;
  static const int PUBLIC_KEY_SIZE = 64;

  const factory ECKeyPair({
    required BigInt privateKey,
    required BigInt publicKey,
  }) = _ECKeyPair;

  factory ECKeyPair.fromJson(Map<String, dynamic> json) =>
      _$ECKeyPairFromJson(json);

  ///
  /// Sign a hash with the private key of this key pair.
  ///
  /// @param [transactionHash] the hash to sign
  /// @return An [ECDSASignature] of the hash
  ///
  ECDSASignature sign(Uint8List transactionHash) {
    final digest = SHA256Digest();
    final signer = ECDSASigner(digest, HMac(digest, 64));
    final pk = ECPrivateKey(privateKey, Sign.SECP256K1_CURVE);
    signer.init(true, PrivateKeyParameter(pk));
    final signature = signer.generateSignature(transactionHash) as ECSignature;
    return ECDSASignature(signature.r, signature.s).toCanonicalised();
  }

  factory ECKeyPair.fromPrivateKey(BigInt privateKey) {
    return ECKeyPair(
      privateKey: privateKey,
      publicKey: Sign.publicKeyFromPrivate(privateKey),
    );
  }

  factory ECKeyPair.fromPrivateKeyBytes(Uint8List privateKey) {
    return ECKeyPair.fromPrivateKey(privateKey.toBigIntWithSign(1));
  }

  Uint8List toBytes() {
    final privateKey = this.privateKey.toBytesPadded(PRIVATE_KEY_SIZE);
    final publicKey = this.publicKey.toBytesPadded(PUBLIC_KEY_SIZE);
    return Uint8List.fromList([...privateKey, ...publicKey]);
  }

  factory ECKeyPair.fromBytes(Uint8List input) {
    if (input.length != PRIVATE_KEY_SIZE + PUBLIC_KEY_SIZE) {
      throw ArgumentError('Invalid input key size');
    }
    final privateKey = input.sublist(0, PRIVATE_KEY_SIZE).toBigIntWithSign(1);
    final publicKey = input
        .sublist(PRIVATE_KEY_SIZE, PRIVATE_KEY_SIZE + PUBLIC_KEY_SIZE)
        .toBigIntWithSign(1);

    return ECKeyPair(privateKey: privateKey, publicKey: publicKey);
  }
}

@freezed
class ECDSASignature with _$ECDSASignature {
  ECDSASignature._();

  const factory ECDSASignature(
    BigInt r,
    BigInt s,
  ) = _ECDSASignature;

  factory ECDSASignature.fromJson(Map<String, dynamic> json) =>
      _$ECDSASignatureFromJson(json);

  ///
  /// @return true if the S component is "low", that means it is below {@link
  ///     Sign#HALF_CURVE_ORDER}. See <a
  ///     href="https://github.com/bitcoin/bips/blob/master/bip-0062.mediawiki#Low_S_values_in_signatures">
  ///     BIP62</a>.
  ///
  bool isCanonical() {
    return s.compareTo(Sign.halfCurveOrder) <= 0;
  }

  ///
  /// Will automatically adjust the S component to be less than or equal to half the curve order,
  /// if necessary. This is required because for every signature (r,s) the signature (r, -s (mod
  /// N)) is a valid signature of the same message. However, we dislike the ability to modify the
  /// bits of a Bitcoin transaction after it's been signed, as that violates various assumed
  /// invariants. Thus in future only one of those forms will be considered legal and the other
  /// will be banned.
  ///
  /// @return the signature in a canonicalised form.
  ///
  ECDSASignature toCanonicalised() {
    if (!isCanonical()) {
      // The order of the curve is the number of valid points that exist on that curve.
      // If S is in the upper half of the number of valid points, then bring it back to
      // the lower half. Otherwise, imagine that
      //    N = 10
      //    s = 8, so (-8 % 10 == 2) thus both (r, 8) and (r, 2) are valid solutions.
      //    10 - 8 == 2, giving us always the latter solution, which is canonical.
      return ECDSASignature(r, Sign.SECP256K1_CURVE.n - s);
    } else {
      return this;
    }
  }
}

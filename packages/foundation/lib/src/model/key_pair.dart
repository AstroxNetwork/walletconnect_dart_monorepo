import 'dart:typed_data';

import 'package:tuple/tuple.dart';

typedef SimpleKeyPair = Tuple2<Uint8List, Uint8List>;

extension SimpleKeyPairExtension on SimpleKeyPair {
  Uint8List get publicKey => item1;

  Uint8List get privateKey => item2;
}

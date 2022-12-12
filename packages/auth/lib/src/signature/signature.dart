enum SignatureType {
  EIP191('eip191'),
  EIP1271('eip1271'),
  ;

  const SignatureType(this.header);

  final String header;
}

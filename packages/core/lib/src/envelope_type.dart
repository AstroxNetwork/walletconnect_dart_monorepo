enum EnvelopeType {
  zero(0),
  one(1),
  ;

  const EnvelopeType(this.id);

  final int id;

  factory EnvelopeType.of(int id) {
    return EnvelopeType.values.firstWhere((e) => e.id == id);
  }
}

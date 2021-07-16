/// Plus Code, or Open Location Code (OLC), is a geocode system for identifying any geographical area on Earth, even when a street address does not exist.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PlusCode
class PlusCode {
  const PlusCode({required this.compoundCode, required this.globalCode});

  final String compoundCode;
  final String globalCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlusCode &&
          runtimeType == other.runtimeType &&
          compoundCode == other.compoundCode &&
          globalCode == other.globalCode;

  @override
  int get hashCode => compoundCode.hashCode ^ globalCode.hashCode;

  @override
  String toString() =>
      'PlusCode{compoundCode: $compoundCode, globalCode: $globalCode}';

  Map<String, dynamic> toMap() =>
      {'compoundCode': compoundCode, 'globalCode': globalCode};

  static PlusCode? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : PlusCode(
          compoundCode: map['compoundCode'],
          globalCode: map['globalCode'],
        );
}

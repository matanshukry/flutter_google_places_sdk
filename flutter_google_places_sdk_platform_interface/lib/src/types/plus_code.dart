import 'package:freezed_annotation/freezed_annotation.dart';

part 'plus_code.freezed.dart';
part 'plus_code.g.dart';

/// Plus Code, or Open Location Code (OLC), is a geocode system for identifying any geographical area on Earth, even when a street address does not exist.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PlusCode
@freezed
class PlusCode with _$PlusCode {
  /// Constructs a [PlusCode] object.
  const factory PlusCode({
    /// The compound plus code, e.g. "9G8F+5W Zurich, Switzerland".
    required String compoundCode,

    /// The geo plus code, e.g. "8FVC9G8F+5W".
    required String globalCode,
  }) = _PlusCode;

  /// Parse an [PlusCode] from json.
  factory PlusCode.fromJson(Map<String, Object?> json) =>
      _$PlusCodeFromJson(json);
}

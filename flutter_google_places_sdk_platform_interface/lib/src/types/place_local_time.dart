import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_local_time.freezed.dart';
part 'place_local_time.g.dart';

/// Represents a local time with just hours and minutes. This class is based on the LocalTime class (available on SDK 26 and higher).
///
/// ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/LocalTime
@freezed
class PlaceLocalTime with _$PlaceLocalTime {
  const factory PlaceLocalTime({
    /// The hours in 24 hour format (0 <= return value < 24).
    required int hours,

    /// The minutes (0 <= return value < 60).
    required int minutes,
  }) = _PlaceLocalTime;

  /// Parse an [PlaceLocalTime] from json.
  factory PlaceLocalTime.fromJson(Map<String, Object?> json) =>
      _$PlaceLocalTimeFromJson(json);
}

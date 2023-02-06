import 'package:flutter_google_places_sdk_platform_interface/src/types/time_of_week.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'period.freezed.dart';
part 'period.g.dart';

/// Represents a time segment. It may contain an open [TimeOfWeek], or a close [TimeOfWeek], or both.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Period
@freezed
class PlaceOpeningHoursPeriod with _$PlaceOpeningHoursPeriod {
  const factory PlaceOpeningHoursPeriod({
    required PlaceOpeningHoursPeriodDetails open,
    PlaceOpeningHoursPeriodDetails? close,
  }) = _PlaceOpeningHoursPeriod;

  /// Parse an [PlaceOpeningHoursPeriod] from json.
  factory PlaceOpeningHoursPeriod.fromJson(Map<String, Object?> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);
}

@freezed
class PlaceOpeningHoursPeriodDetails with _$PlaceOpeningHoursPeriodDetails {
  const factory PlaceOpeningHoursPeriodDetails({
    required int day,
    required String time,
    String? date,
    @Default(false) bool truncated,
  }) = _PlaceOpeningHoursPeriodDetails;

  /// Parse an [PlaceOpeningHoursPeriod] from json.
  factory PlaceOpeningHoursPeriodDetails.fromJson(Map<String, Object?> json) =>
      _$PlaceOpeningHoursPeriodDetailsFromJson(json);
}

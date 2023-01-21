import 'package:flutter_google_places_sdk_platform_interface/src/types/time_of_week.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'period.freezed.dart';
part 'period.g.dart';

/// Represents a time segment. It may contain an open [TimeOfWeek], or a close [TimeOfWeek], or both.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Period
@freezed
class Period with _$Period {
  const factory Period({
    required TimeOfWeek open,
    required TimeOfWeek? close,
  }) = _Period;

  /// Parse an [Period] from json.
  factory Period.fromJson(Map<String, Object?> json) => _$PeriodFromJson(json);
}

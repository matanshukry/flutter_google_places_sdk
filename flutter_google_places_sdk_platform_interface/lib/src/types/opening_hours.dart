import 'package:flutter_google_places_sdk_platform_interface/src/types/period.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours.freezed.dart';
part 'opening_hours.g.dart';

/// Represents information on when a [Place] will be open during the week.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/OpeningHours
@freezed
class OpeningHours with _$OpeningHours {
  /// constructs an [OpeningHours] object.
  const factory OpeningHours({
    /// A list of Period objects that provide more detailed information that is equivalent to the data provided by getWeekdayText().
    required List<Period> periods,

    /// Returns a list of strings that represent opening and closing hours in human readable form.
    required List<String> weekdayText,
  }) = _OpeningHours;

  /// Parse an [OpeningHours] from json.
  factory OpeningHours.fromJson(Map<String, Object?> json) =>
      _$OpeningHoursFromJson(json);
}

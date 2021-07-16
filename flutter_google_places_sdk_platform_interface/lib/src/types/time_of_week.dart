import 'package:flutter_google_places_sdk_platform_interface/src/types/day_of_week.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/place_local_time.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/utils.dart';

/// Represents a a timestamp that's identified by the day of the week, and the time in 24 hour format.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/TimeOfWeek
class TimeOfWeek {
  const TimeOfWeek({required this.day, required this.time});

  final DayOfWeek day;
  final PlaceLocalTime time;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeOfWeek &&
          runtimeType == other.runtimeType &&
          day == other.day &&
          time == other.time;

  @override
  int get hashCode => day.hashCode ^ time.hashCode;

  @override
  String toString() => 'TimeOfWeek{day: $day, time: $time}';

  Map<String, dynamic> toMap() => {'day': day, 'time': time};

  static TimeOfWeek? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : TimeOfWeek(
          day: (map['day'] as String).toDayOfWeek()!,
          time: PlaceLocalTime.fromMap(toJsonMap(map['time'])!),
        );
}

import 'package:flutter/foundation.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/period.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/utils.dart';

/// Represents information on when a [Place] will be open during the week.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/OpeningHours
class OpeningHours {
  const OpeningHours({required this.periods, required this.weekdayText});

  final List<Period> periods;
  final List<String> weekdayText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpeningHours &&
          runtimeType == other.runtimeType &&
          listEquals(periods, other.periods) &&
          listEquals(weekdayText, other.weekdayText);

  @override
  int get hashCode => periods.hashCode ^ weekdayText.hashCode;

  @override
  String toString() =>
      'OpeningHours{periods: $periods, weekdayText: $weekdayText}';

  Map<String, dynamic> toMap() =>
      {'periods': periods, 'weekdayText': weekdayText};

  static OpeningHours? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : OpeningHours(
          periods: map['periods']
              .map((entry) => Period.fromMap(toJsonMap(entry)!))
              .toList()
              .cast<Period>(),
          weekdayText: map['weekdayText'].cast<String>(),
        );
}

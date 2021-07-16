/// Represents a day of the week. This enumeration is based on the [DayOfWeek](https://developer.android.com/reference/java/time/DayOfWeek) class (available on SDK 26 or higher).
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/DayOfWeek
enum DayOfWeek {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
}

extension DayOfWeekDescriptor on DayOfWeek {
  String get value {
    switch (this) {
      case DayOfWeek.Sunday:
        return 'SUNDAY';
      case DayOfWeek.Monday:
        return 'MONDAY';
      case DayOfWeek.Tuesday:
        return 'TUESDAY';
      case DayOfWeek.Wednesday:
        return 'WEDNESDAY';
      case DayOfWeek.Thursday:
        return 'THURSDAY';
      case DayOfWeek.Friday:
        return 'FRIDAY';
      case DayOfWeek.Saturday:
        return 'SATURDAY';
      default:
        throw ArgumentError('Unsupported day of week: $this');
    }
  }
}

extension DayOfWeekEnumParser on String {
  DayOfWeek? toDayOfWeek() {
    switch (toUpperCase()) {
      case 'SUNDAY':
        return DayOfWeek.Sunday;
      case 'MONDAY':
        return DayOfWeek.Monday;
      case 'TUESDAY':
        return DayOfWeek.Tuesday;
      case 'WEDNESDAY':
        return DayOfWeek.Wednesday;
      case 'THURSDAY':
        return DayOfWeek.Thursday;
      case 'FRIDAY':
        return DayOfWeek.Friday;
      case 'SATURDAY':
        return DayOfWeek.Saturday;
      case 'NULL':
        return null;
      default:
        throw ArgumentError('Unsupported day of week: $this');
    }
  }
}

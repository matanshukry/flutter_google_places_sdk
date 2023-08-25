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
  Saturday;

  factory DayOfWeek.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }

  String toJson() => name;
}

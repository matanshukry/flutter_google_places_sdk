/// Represents a local time with just hours and minutes. This class is based on the LocalTime class (available on SDK 26 and higher).
///
/// ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/LocalTime
class PlaceLocalTime {
  const PlaceLocalTime({required this.hours, required this.minutes});

  final int hours;
  final int minutes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceLocalTime &&
          runtimeType == other.runtimeType &&
          hours == other.hours &&
          minutes == other.minutes;

  @override
  int get hashCode => hours.hashCode ^ minutes.hashCode;

  @override
  String toString() => 'PlaceLocalTime{hours: $hours, minutes: $minutes}';

  Map<String, dynamic> toMap() => {'hours': hours, 'minutes': minutes};

  static PlaceLocalTime fromMap(Map<String, dynamic> map) => PlaceLocalTime(
        hours: map['hours'],
        minutes: map['minutes'],
      );
}

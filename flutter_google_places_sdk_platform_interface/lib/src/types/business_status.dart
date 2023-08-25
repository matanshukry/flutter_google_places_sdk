import 'package:freezed_annotation/freezed_annotation.dart';

/// The business status of a place
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.BusinessStatus
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum BusinessStatus {
  Operational,
  ClosedTemporarily,
  ClosedPermanently
  ;

  factory BusinessStatus.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}
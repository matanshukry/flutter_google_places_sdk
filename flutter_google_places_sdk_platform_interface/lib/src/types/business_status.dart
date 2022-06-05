import 'package:freezed_annotation/freezed_annotation.dart';

/// The business status of a place
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.BusinessStatus
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum BusinessStatus {
  Operational,
  ClosedTemporarily,
  ClosedPermanently,
}
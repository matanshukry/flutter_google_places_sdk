import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum PlaceField {
  address,
  formattedAddress,
  addressComponents,
  businessStatus,
  id,
  @JsonValue('geometry/location')
  location,
  name,
  openingHours,
  phoneNumber,
  photoMetadatas,
  plusCode,
  photos,
  priceLevel,
  rating,
  types,
  userRatingsTotal,
  utcOffset,
  @JsonValue('geometry/viewport')
  viewport,
  websiteUri,
}

extension PlaceFieldValue on PlaceField {
  String get value => _$PlaceFieldEnumMap[this]!;
}

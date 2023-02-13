import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/web-service/place-data-fields#places-api-fields-support
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum PlaceDetailsField {
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

extension PlaceDetailsFieldValue on PlaceDetailsField {
  String get value => _$PlaceDetailsFieldEnumMap[this]!;
}

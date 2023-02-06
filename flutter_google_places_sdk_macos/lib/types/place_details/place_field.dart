import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum PlaceField {
  Address,
  FormattedAddress,
  AddressComponents,
  BusinessStatus,
  Id,
  @JsonValue('geometry/location')
  Location,
  Name,
  OpeningHours,
  PhoneNumber,
  PhotoMetadatas,
  PlusCode,
  Photos,
  PriceLevel,
  Rating,
  Types,
  UserRatingsTotal,
  @JsonValue('UTC_OFFSET')
  UTCOffset,
  @JsonValue('geometry/viewport')
  Viewport,
  WebsiteUri,
}

extension PlaceFieldValue on PlaceField {
  String get value => _$PlaceFieldEnumMap[this]!;
}

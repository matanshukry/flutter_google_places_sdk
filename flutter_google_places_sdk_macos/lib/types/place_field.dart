import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
part 'place_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum PlaceField {
  @JsonValue('formatted_address')
  Address,
  @JsonValue('address_component')
  AddressComponents,
  BusinessStatus,
  @JsonValue('place_id')
  Id,
  @JsonValue('geometry/location')
  Location,
  Name,
  OpeningHours,
  @JsonValue('formatted_phone_number')
  PhoneNumber,
  @JsonValue('photos')
  PhotoMetadatas,
  PlusCode,
  PriceLevel,
  Rating,
  Types,
  UserRatingsTotal,
  @JsonValue('utc_offset')
  UTCOffset,
  @JsonValue('geometry/viewport')
  Viewport,
  @JsonValue('website')
  WebsiteUri,
}

extension PlaceFieldValue on PlaceField {
  String get value => _$PlaceFieldEnumMap[this]!;
  PlaceField getField(inter.PlaceField value) {
    return PlaceField.values[value.index];
  }
}

extension InterfacePlaceFieldValue on inter.PlaceField {
  PlaceField get field => PlaceField.values[index];
}

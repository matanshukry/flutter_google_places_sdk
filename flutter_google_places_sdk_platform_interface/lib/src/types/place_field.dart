import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
@JsonEnum(fieldRename: FieldRename.screamingSnake, alwaysCreate: true)
enum PlaceField {
  FormattedAddress,
  FormattedAddressAdr,
  AddressComponents,
  BusinessStatus,
  Id,
  Location,
  DisplayName,
  OpeningHours,
  NationalPhoneNumber,
  InternationalPhoneNumber,
  Photos,
  PlusCode,
  PriceLevel,
  Rating,
  Types,
  UserRatingCount,
  UtcOffset,
  Viewport,
  WebsiteUri,

  /// Places (new) API
  CurbsidePickup,
  CurrentOpeningHours,
  Delivery,
  DineIn,
  EditorialSummary,
  IconBackgroundColor,
  IconMaskUrl,
  Reservable,
  Reviews,
  SecondaryOpeningHours,
  ServesBeer,
  ServesBreakfast,
  ServesBrunch,
  ServesDinner,
  ServesLunch,
  ServesVegetarianFood,
  ServesWine,
  Takeout,
  AccessibilityOptions;

  factory PlaceField.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}

extension PlaceFieldValue on PlaceField {
  String get value => _$PlaceFieldEnumMap[this]!;
}

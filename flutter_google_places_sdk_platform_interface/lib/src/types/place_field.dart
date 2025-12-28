import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_field.g.dart';

/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
@JsonEnum(fieldRename: FieldRename.screamingSnake, alwaysCreate: true)
enum PlaceField {
  Address(v1Only: true),
  AddressComponents,
  BusinessStatus,
  Id,
  @JsonValue('LAT_LNG')
  Location,
  Name,
  OpeningHours,
  PhoneNumber(v2: NationalPhoneNumber),
  PhotoMetadatas(v2: Photos),
  PlusCode,
  PriceLevel,
  Rating,
  Types,
  UserRatingsTotal(v2: UserRatingCount),
  @JsonValue('UTC_OFFSET')
  UTCOffset(v2: UtcOffsetMinutes),
  Viewport,
  WebsiteUri(v2: WebsiteURI),

  /// Places (new) API
  Photos,
  WebsiteURI,
  UtcOffsetMinutes,
  UserRatingCount,
  NationalPhoneNumber,
  InternationalPhoneNumber,
  CurbsidePickup,
  CurrentOpeningHours,
  Delivery,
  DineIn,
  EditorialSummary,
  IconBackgroundColor,
  IconUrl,
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
  WheelchairAccessibleEntrance;

  const PlaceField({this.v2, this.v1Only = false});

  factory PlaceField.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }

  final bool v1Only;
  final PlaceField? v2;

  PlaceField? get forV2 => v2 ?? (v1Only ? null : this);
}

extension PlaceFieldValue on PlaceField {
  String get value => _$PlaceFieldEnumMap[this]!;
}

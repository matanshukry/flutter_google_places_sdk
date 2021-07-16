/// Used to specify which place data types to return.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.Field
enum PlaceField {
  Address,
  AddressComponents,
  BusinessStatus,
  Id,
  Location,
  Name,
  OpeningHours,
  PhoneNumber,
  PhotoMetadatas,
  PlusCode,
  PriceLevel,
  Rating,
  Types,
  UserRatingsTotal,
  UTCOffset,
  Viewport,
  WebsiteUri,
}

extension PlaceFieldDescriptor on PlaceField {
  String get value {
    switch (this) {
      case PlaceField.Address:
        return 'ADDRESS';
      case PlaceField.AddressComponents:
        return 'ADDRESS_COMPONENTS';
      case PlaceField.BusinessStatus:
        return 'BUSINESS_STATUS';
      case PlaceField.Id:
        return 'ID';
      case PlaceField.Location:
        return 'LAT_LNG';
      case PlaceField.Name:
        return 'NAME';
      case PlaceField.OpeningHours:
        return 'OPENING_HOURS';
      case PlaceField.PhoneNumber:
        return 'PHONE_NUMBER';
      case PlaceField.PhotoMetadatas:
        return 'PHOTO_METADATAS';
      case PlaceField.PlusCode:
        return 'PLUS_CODE';
      case PlaceField.PriceLevel:
        return 'PRICE_LEVEL';
      case PlaceField.Rating:
        return 'RATING';
      case PlaceField.Types:
        return 'TYPES';
      case PlaceField.UserRatingsTotal:
        return 'USER_RATINGS_TOTAL';
      case PlaceField.UTCOffset:
        return 'UTC_OFFSET';
      case PlaceField.Viewport:
        return 'VIEWPORT';
      case PlaceField.WebsiteUri:
        return 'WEBSITE_URI';
      default:
        throw ArgumentError('Unsupported place field: $this');
    }
  }
}

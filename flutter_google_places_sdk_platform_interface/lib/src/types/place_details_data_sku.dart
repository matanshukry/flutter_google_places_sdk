
import 'package:flutter_google_places_sdk_platform_interface/src/types/place_field.dart';

typedef PlaceDetailsDataSKU = List<PlaceField>;

// https://developers.google.com/maps/documentation/places/android-sdk/usage-and-billing#basic-data
const placeDetailsBasicDataSKU = [
  PlaceField.Address,
  PlaceField.AddressComponents,
  PlaceField.BusinessStatus,
  PlaceField.Id,
  PlaceField.Location,
  PlaceField.Name,
  PlaceField.PhotoMetadatas,
  PlaceField.PlusCode,
  PlaceField.Types,
  PlaceField.UTCOffset,
  PlaceField.Viewport,

];

// https://developers.google.com/maps/documentation/places/android-sdk/usage-and-billing#contact-data
const placeDetailsContactDataSKU = [
  PlaceField.OpeningHours,
  PlaceField.PhoneNumber,
  PlaceField.WebsiteUri,
];

// https://developers.google.com/maps/documentation/places/android-sdk/usage-and-billing#atmosphere-data
const placeDetailsAtmosphereDataSKU = [
  PlaceField.PriceLevel,
  PlaceField.Rating,
];

final placeDetailsAllData = [
  ...placeDetailsBasicDataSKU,
  ...placeDetailsContactDataSKU,
  ...placeDetailsAtmosphereDataSKU,
];

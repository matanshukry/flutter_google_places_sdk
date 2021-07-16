import 'package:flutter_google_places_sdk_platform_interface/src/types/address_component.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/business_status.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/lat_lng.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/lat_lng_bounds.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/opening_hours.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/photo_metadata.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/place_type.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/plus_code.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/utils.dart';

/// Represents a particular physical place.
///
/// A Place encapsulates information about a physical location, including its name, address, and any other information we might have about it.
///
/// Note: In general, some fields will be inapplicable to certain places, or the information may not exist.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place
class Place {
  const Place({
    this.address,
    this.addressComponents,
    this.businessStatus,
    this.attributions,
    this.latLng,
    this.name,
    this.openingHours,
    this.phoneNumber,
    this.photoMetadatas,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.types,
    this.userRatingsTotal,
    this.utcOffsetMinutes,
    this.viewport,
    this.websiteUri,
  });

  final String? address;
  final List<AddressComponent>? addressComponents;
  final BusinessStatus? businessStatus;
  final List<String>? attributions;
  final LatLng? latLng;
  final String? name;
  final OpeningHours? openingHours;
  final String? phoneNumber;
  final List<PhotoMetadata>? photoMetadatas;
  final PlusCode? plusCode;
  final int? priceLevel;
  final double? rating;
  final List<PlaceType>? types;
  final int? userRatingsTotal;
  final int? utcOffsetMinutes;
  final LatLngBounds? viewport;
  final Uri? websiteUri;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Place &&
          runtimeType == other.runtimeType &&
          address == other.address &&
          addressComponents == other.addressComponents &&
          businessStatus == other.businessStatus &&
          attributions == other.attributions &&
          latLng == other.latLng &&
          name == other.name &&
          openingHours == other.openingHours &&
          phoneNumber == other.phoneNumber &&
          photoMetadatas == other.photoMetadatas &&
          plusCode == other.plusCode &&
          priceLevel == other.priceLevel &&
          rating == other.rating &&
          types == other.types &&
          userRatingsTotal == other.userRatingsTotal &&
          utcOffsetMinutes == other.utcOffsetMinutes &&
          viewport == other.viewport &&
          websiteUri == other.websiteUri;

  @override
  int get hashCode =>
      address.hashCode ^
      addressComponents.hashCode ^
      businessStatus.hashCode ^
      attributions.hashCode ^
      latLng.hashCode ^
      name.hashCode ^
      openingHours.hashCode ^
      phoneNumber.hashCode ^
      photoMetadatas.hashCode ^
      plusCode.hashCode ^
      priceLevel.hashCode ^
      rating.hashCode ^
      types.hashCode ^
      userRatingsTotal.hashCode ^
      utcOffsetMinutes.hashCode ^
      viewport.hashCode ^
      websiteUri.hashCode;

  @override
  String toString() =>
      'Place{address: $address, addressComponents: $addressComponents, businessStatus: $businessStatus, attributions: $attributions, latLng: $latLng, name: $name, openingHours: $openingHours, phoneNumber: $phoneNumber, photoMetadatas: $photoMetadatas, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, types: $types, userRatingsTotal: $userRatingsTotal, utcOffsetMinutes: $utcOffsetMinutes, viewport: $viewport, websiteUri: $websiteUri}';

  Map<String, dynamic> toMap() => {
        'address': address,
        'addressComponents': addressComponents?.map((e) => e.toMap()),
        'businessStatus': businessStatus?.value,
        'attributions': attributions,
        'latLng': latLng?.toMap(),
        'name': name,
        'openingHours': openingHours?.toMap(),
        'phoneNumber': phoneNumber,
        'photoMetadatas': photoMetadatas?.map((e) => e.toMap()),
        'plusCode': plusCode?.toMap(),
        'priceLevel': priceLevel,
        'rating': rating,
        'types': types?.map((e) => e.value),
        'userRatingsTotal': userRatingsTotal,
        'utcOffsetMinutes': utcOffsetMinutes,
        'viewport': viewport?.toMap(),
        'websiteUri': websiteUri?.toString(),
      };

  static Place fromMap(Map<String, dynamic> map) => Place(
        address: map['address'],
        addressComponents: map['addressComponents']
            ?.map((entry) =>
                AddressComponent.fromMap(entry.cast<String, dynamic>()))
            ?.toList()
            ?.cast<AddressComponent>(),
        businessStatus: (map['businessStatus'] as String?)?.toBusinessStatus(),
        attributions: map['attributions']?.cast<String>(),
        latLng: LatLng.fromMap(toJsonMap(map['latLng'])),
        name: map['name'],
        openingHours: OpeningHours.fromMap(toJsonMap(map['openingHours'])),
        phoneNumber: map['phoneNumber'],
        photoMetadatas: map['photoMetadatas']
            ?.map((entry) => PhotoMetadata.fromMap(toJsonMap(entry)))
            ?.toList()
            ?.cast<PhotoMetadata>(),
        plusCode: PlusCode.fromMap(toJsonMap(map['plusCode'])),
        priceLevel: map['priceLevel'],
        rating: map['rating'],
        types: map['types']
            ?.map((entry) => (entry as String?)?.toPlaceType())
            ?.toList()
            ?.cast<PlaceType>(),
        userRatingsTotal: map['userRatingsTotal'],
        utcOffsetMinutes: map['utcOffsetMinutes'],
        viewport: LatLngBounds.fromMap(toJsonMap(map['viewport'])),
        websiteUri:
            map['websiteUri'] == null ? null : Uri.parse(map['websiteUri']),
      );
}

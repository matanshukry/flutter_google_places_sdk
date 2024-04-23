import 'package:flutter/foundation.dart';

/// Filter to restrict the result set of autocomplete predictions to certain types.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/TypeFilter
enum PlaceTypeFilter {
  ACCOUNTING,
  ADDRESS,
  ADMINISTRATIVE_AREA_LEVEL_1,
  ADMINISTRATIVE_AREA_LEVEL_2,
  ADMINISTRATIVE_AREA_LEVEL_3,
  ADMINISTRATIVE_AREA_LEVEL_4,
  ADMINISTRATIVE_AREA_LEVEL_5,
  ADMINISTRATIVE_AREA_LEVEL_6,
  ADMINISTRATIVE_AREA_LEVEL_7,
  AIRPORT,
  AMUSEMENT_PARK,
  AQUARIUM,
  ARCHIPELAGO,
  ART_GALLERY,
  ATM,
  BAKERY,
  BANK,
  BAR,
  BEAUTY_SALON,
  BICYCLE_STORE,
  BOOK_STORE,
  BOWLING_ALLEY,
  BUS_STATION,
  CAFE,
  CAMPGROUND,
  CAR_DEALER,
  CAR_RENTAL,
  CAR_REPAIR,
  CAR_WASH,
  CASINO,
  CEMETERY,
  CHURCH,
  CITIES,
  CITY_HALL,
  CLOTHING_STORE,
  COLLOQUIAL_AREA,
  CONTINENT,
  CONVENIENCE_STORE,
  COUNTRY,
  COURTHOUSE,
  DENTIST,
  DEPARTMENT_STORE,
  DOCTOR,
  DRUGSTORE,
  ELECTRICIAN,
  ELECTRONICS_STORE,
  EMBASSY,
  ESTABLISHMENT,
  FINANCE,
  FIRE_STATION,
  FLOOR,
  FLORIST,
  FOOD,
  FUNERAL_HOME,
  FURNITURE_STORE,
  GAS_STATION,
  GENERAL_CONTRACTOR,
  GEOCODE,
  GYM,
  HAIR_CARE,
  HARDWARE_STORE,
  HEALTH,
  HINDU_TEMPLE,
  HOME_GOODS_STORE,
  HOSPITAL,
  INSURANCE_AGENCY,
  INTERSECTION,
  JEWELRY_STORE,
  LANDMARK,
  LAUNDRY,
  LAWYER,
  LIBRARY,
  LIGHT_RAIL_STATION,
  LIQUOR_STORE,
  LOCALITY,
  LOCAL_GOVERNMENT_OFFICE,
  LOCKSMITH,
  LODGING,
  MEAL_DELIVERY,
  MEAL_TAKEAWAY,
  MOSQUE,
  MOVIE_RENTAL,
  MOVIE_THEATER,
  MOVING_COMPANY,
  MUSEUM,
  NATURAL_FEATURE,
  NEIGHBORHOOD,
  NIGHT_CLUB,
  PAINTER,
  PARK,
  PARKING,
  PET_STORE,
  PHARMACY,
  PHYSIOTHERAPIST,
  PLACE_OF_WORSHIP,
  PLUMBER,
  PLUS_CODE,
  POINT_OF_INTEREST,
  POLICE,
  POLITICAL,
  POSTAL_CODE,
  POSTAL_CODE_PREFIX,
  POSTAL_CODE_SUFFIX,
  POSTAL_TOWN,
  POST_BOX,
  POST_OFFICE,
  PREMISE,
  PRIMARY_SCHOOL,
  REAL_ESTATE_AGENCY,
  REGIONS,
  RESTAURANT,
  ROOFING_CONTRACTOR,
  ROOM,
  ROUTE,
  RV_PARK,
  SCHOOL,
  SECONDARY_SCHOOL,
  SHOE_STORE,
  SHOPPING_MALL,
  SPA,
  STADIUM,
  STORAGE,
  STORE,
  STREET_ADDRESS,
  STREET_NUMBER,
  SUBLOCALITY,
  SUBLOCALITY_LEVEL_1,
  SUBLOCALITY_LEVEL_2,
  SUBLOCALITY_LEVEL_3,
  SUBLOCALITY_LEVEL_4,
  SUBLOCALITY_LEVEL_5,
  SUBPREMISE,
  SUBWAY_STATION,
  SUPERMARKET,
  SYNAGOGUE,
  TAXI_STAND,
  TOURIST_ATTRACTION,
  TOWN_SQUARE,
  TRAIN_STATION,
  TRANSIT_STATION,
  TRAVEL_AGENCY,
  UNIVERSITY,
  VETERINARY_CARE,
  ZOO
  ;

  factory PlaceTypeFilter.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }

  String get apiExpectedValue {
    switch (this) {
      case PlaceTypeFilter.ACCOUNTING:
        return 'accounting';
      case PlaceTypeFilter.ADDRESS:
        return 'address';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_1:
        return 'administrative_area_level_1';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_2:
        return 'administrative_area_level_2';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_3:
        return 'administrative_area_level_3';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_4:
        return 'administrative_area_level_4';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_5:
        return 'administrative_area_level_5';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_6:
        return 'administrative_area_level_6';
      case PlaceTypeFilter.ADMINISTRATIVE_AREA_LEVEL_7:
        return 'administrative_area_level_7';
      case PlaceTypeFilter.AIRPORT:
        return 'airport';
      case PlaceTypeFilter.AMUSEMENT_PARK:
        return 'amusement_park';
      case PlaceTypeFilter.AQUARIUM:
        return 'aquarium';
      case PlaceTypeFilter.ARCHIPELAGO:
        return 'archipelago';
      case PlaceTypeFilter.ART_GALLERY:
        return 'art_gallery';
      case PlaceTypeFilter.ATM:
        return 'atm';
      case PlaceTypeFilter.BAKERY:
        return 'bakery';
      case PlaceTypeFilter.BANK:
        return 'bank';
      case PlaceTypeFilter.BAR:
        return 'bar';
      case PlaceTypeFilter.BEAUTY_SALON:
        return 'beauty_salon';
      case PlaceTypeFilter.BICYCLE_STORE:
        return 'bicycle_store';
      case PlaceTypeFilter.BOOK_STORE:
        return 'book_store';
      case PlaceTypeFilter.BOWLING_ALLEY:
        return 'bowling_alley';
      case PlaceTypeFilter.BUS_STATION:
        return 'bus_station';
      case PlaceTypeFilter.CAFE:
        return 'cafe';
      case PlaceTypeFilter.CAMPGROUND:
        return 'campground';
      case PlaceTypeFilter.CAR_DEALER:
        return 'car_dealer';
      case PlaceTypeFilter.CAR_RENTAL:
        return 'car_rental';
      case PlaceTypeFilter.CAR_REPAIR:
        return 'car_repair';
      case PlaceTypeFilter.CAR_WASH:
        return 'car_wash';
      case PlaceTypeFilter.CASINO:
        return 'casino';
      case PlaceTypeFilter.CEMETERY:
        return 'cemetery';
      case PlaceTypeFilter.CHURCH:
        return 'church';
      case PlaceTypeFilter.CITIES:
        return '(cities)';
      case PlaceTypeFilter.CITY_HALL:
        return 'city_hall';
      case PlaceTypeFilter.CLOTHING_STORE:
        return 'clothing_store';
      case PlaceTypeFilter.COLLOQUIAL_AREA:
        return 'colloquial_area';
      case PlaceTypeFilter.CONTINENT:
        return 'continent';
      case PlaceTypeFilter.CONVENIENCE_STORE:
        return 'convenience_store';
      case PlaceTypeFilter.COUNTRY:
        return 'country';
      case PlaceTypeFilter.COURTHOUSE:
        return 'courthouse';
      case PlaceTypeFilter.DENTIST:
        return 'dentist';
      case PlaceTypeFilter.DEPARTMENT_STORE:
        return 'department_store';
      case PlaceTypeFilter.DOCTOR:
        return 'doctor';
      case PlaceTypeFilter.DRUGSTORE:
        return 'drugstore';
      case PlaceTypeFilter.ELECTRICIAN:
        return 'electrician';
      case PlaceTypeFilter.ELECTRONICS_STORE:
        return 'electronics_store';
      case PlaceTypeFilter.EMBASSY:
        return 'embassy';
      case PlaceTypeFilter.ESTABLISHMENT:
        return 'establishment';
      case PlaceTypeFilter.FINANCE:
        return 'finance';
      case PlaceTypeFilter.FIRE_STATION:
        return 'fire_station';
      case PlaceTypeFilter.FLOOR:
        return 'floor';
      case PlaceTypeFilter.FLORIST:
        return 'florist';
      case PlaceTypeFilter.FOOD:
        return 'food';
      case PlaceTypeFilter.FUNERAL_HOME:
        return 'funeral_home';
      case PlaceTypeFilter.FURNITURE_STORE:
        return 'furniture_store';
      case PlaceTypeFilter.GAS_STATION:
        return 'gas_station';
      case PlaceTypeFilter.GENERAL_CONTRACTOR:
        return 'general_contractor';
      case PlaceTypeFilter.GEOCODE:
        return 'geocode';
      case PlaceTypeFilter.GYM:
        return 'gym';
      case PlaceTypeFilter.HAIR_CARE:
        return 'hair_care';
      case PlaceTypeFilter.HARDWARE_STORE:
        return 'hardware_store';
      case PlaceTypeFilter.HEALTH:
        return 'health';
      case PlaceTypeFilter.HINDU_TEMPLE:
        return 'hindu_temple';
      case PlaceTypeFilter.HOME_GOODS_STORE:
        return 'home_goods_store';
      case PlaceTypeFilter.HOSPITAL:
        return 'hospital';
      case PlaceTypeFilter.INSURANCE_AGENCY:
        return 'insurance_agency';
      case PlaceTypeFilter.INTERSECTION:
        return 'intersection';
      case PlaceTypeFilter.JEWELRY_STORE:
        return 'jewelry_store';
      case PlaceTypeFilter.LANDMARK:
        return 'landmark';
      case PlaceTypeFilter.LAUNDRY:
        return 'laundry';
      case PlaceTypeFilter.LAWYER:
        return 'lawyer';
      case PlaceTypeFilter.LIBRARY:
        return 'library';
      case PlaceTypeFilter.LIGHT_RAIL_STATION:
        return 'light_rail_station';
      case PlaceTypeFilter.LIQUOR_STORE:
        return 'liquor_store';
      case PlaceTypeFilter.LOCALITY:
        return 'locality';
      case PlaceTypeFilter.LOCAL_GOVERNMENT_OFFICE:
        return 'local_government_office';
      case PlaceTypeFilter.LOCKSMITH:
        return 'locksmith';
      case PlaceTypeFilter.LODGING:
        return 'lodging';
      case PlaceTypeFilter.MEAL_DELIVERY:
        return 'meal_delivery';
      case PlaceTypeFilter.MEAL_TAKEAWAY:
        return 'meal_takeaway';
      case PlaceTypeFilter.MOSQUE:
        return 'mosque';
      case PlaceTypeFilter.MOVIE_RENTAL:
        return 'movie_rental';
      case PlaceTypeFilter.MOVIE_THEATER:
        return 'movie_theater';
      case PlaceTypeFilter.MOVING_COMPANY:
        return 'moving_company';
      case PlaceTypeFilter.MUSEUM:
        return 'museum';
      case PlaceTypeFilter.NATURAL_FEATURE:
        return 'natural_feature';
      case PlaceTypeFilter.NEIGHBORHOOD:
        return 'neighborhood';
      case PlaceTypeFilter.NIGHT_CLUB:
        return 'night_club';
      case PlaceTypeFilter.PAINTER:
        return 'painter';
      case PlaceTypeFilter.PARK:
        return 'park';
      case PlaceTypeFilter.PARKING:
        return 'parking';
      case PlaceTypeFilter.PET_STORE:
        return 'pet_store';
      case PlaceTypeFilter.PHARMACY:
        return 'pharmacy';
      case PlaceTypeFilter.PHYSIOTHERAPIST:
        return 'physiotherapist';
      case PlaceTypeFilter.PLACE_OF_WORSHIP:
        return 'place_of_worship';
      case PlaceTypeFilter.PLUMBER:
        return 'plumber';
      case PlaceTypeFilter.PLUS_CODE:
        return 'plus_code';
      case PlaceTypeFilter.POINT_OF_INTEREST:
        return 'point_of_interest';
      case PlaceTypeFilter.POLICE:
        return 'police';
      case PlaceTypeFilter.POLITICAL:
        return 'political';
      case PlaceTypeFilter.POSTAL_CODE:
        return 'postal_code';
      case PlaceTypeFilter.POSTAL_CODE_PREFIX:
        return 'postal_code_prefix';
      case PlaceTypeFilter.POSTAL_CODE_SUFFIX:
        return 'postal_code_suffix';
      case PlaceTypeFilter.POSTAL_TOWN:
        return 'postal_town';
      case PlaceTypeFilter.POST_BOX:
        return 'post_box';
      case PlaceTypeFilter.POST_OFFICE:
        return 'post_office';
      case PlaceTypeFilter.PREMISE:
        return 'premise';
      case PlaceTypeFilter.PRIMARY_SCHOOL:
        return 'primary_school';
      case PlaceTypeFilter.REAL_ESTATE_AGENCY:
        return 'real_estate_agency';
      case PlaceTypeFilter.REGIONS:
        return '(regions)';
      case PlaceTypeFilter.RESTAURANT:
        return 'restaurant';
      case PlaceTypeFilter.ROOFING_CONTRACTOR:
        return 'roofing_contractor';
      case PlaceTypeFilter.ROOM:
        return 'room';
      case PlaceTypeFilter.ROUTE:
        return 'route';
      case PlaceTypeFilter.RV_PARK:
        return 'rv_park';
      case PlaceTypeFilter.SCHOOL:
        return 'school';
      case PlaceTypeFilter.SECONDARY_SCHOOL:
        return 'secondary_school';
      case PlaceTypeFilter.SHOE_STORE:
        return 'shoe_store';
      case PlaceTypeFilter.SHOPPING_MALL:
        return 'shopping_mall';
      case PlaceTypeFilter.SPA:
        return 'spa';
      case PlaceTypeFilter.STADIUM:
        return 'stadium';
      case PlaceTypeFilter.STORAGE:
        return 'storage';
      case PlaceTypeFilter.STORE:
        return 'store';
      case PlaceTypeFilter.STREET_ADDRESS:
        return 'street_address';
      case PlaceTypeFilter.STREET_NUMBER:
        return 'street_number';
      case PlaceTypeFilter.SUBLOCALITY:
        return 'sublocality';
      case PlaceTypeFilter.SUBLOCALITY_LEVEL_1:
        return 'sublocality_level_1';
      case PlaceTypeFilter.SUBLOCALITY_LEVEL_2:
        return 'sublocality_level_2';
      case PlaceTypeFilter.SUBLOCALITY_LEVEL_3:
        return 'sublocality_level_3';
      case PlaceTypeFilter.SUBLOCALITY_LEVEL_4:
        return 'sublocality_level_4';
      case PlaceTypeFilter.SUBLOCALITY_LEVEL_5:
        return 'sublocality_level_5';
      case PlaceTypeFilter.SUBPREMISE:
        return 'subpremise';
      case PlaceTypeFilter.SUBWAY_STATION:
        return 'subway_station';
      case PlaceTypeFilter.SUPERMARKET:
        return 'supermarket';
      case PlaceTypeFilter.SYNAGOGUE:
        return 'synagogue';
      case PlaceTypeFilter.TAXI_STAND:
        return 'taxi_stand';
      case PlaceTypeFilter.TOURIST_ATTRACTION:
        return 'tourist_attraction';
      case PlaceTypeFilter.TOWN_SQUARE:
        return 'town_square';
      case PlaceTypeFilter.TRAIN_STATION:
        return 'train_station';
      case PlaceTypeFilter.TRANSIT_STATION:
        return 'transit_station';
      case PlaceTypeFilter.TRAVEL_AGENCY:
        return 'travel_agency';
      case PlaceTypeFilter.UNIVERSITY:
        return 'university';
      case PlaceTypeFilter.VETERINARY_CARE:
        return 'veterinary_care';
      case PlaceTypeFilter.ZOO:
        return 'zoo';
    }
  }
}

extension PlaceTypeFilterDescriptor on PlaceTypeFilter {
  String get value => describeEnum(this);
}

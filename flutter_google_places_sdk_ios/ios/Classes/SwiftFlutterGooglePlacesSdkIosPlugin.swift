import Flutter
import UIKit
import GooglePlaces

public class SwiftFlutterGooglePlacesSdkIosPlugin: NSObject, FlutterPlugin {
    static let CHANNEL_NAME = "plugins.msh.com/flutter_google_places_sdk"
    let METHOD_INITIALIZE = "initialize"
    let METHOD_DEINITIALIZE = "deinitialize"
    let METHOD_IS_INITIALIZE = "isInitialized"
    let METHOD_FIND_AUTOCOMPLETE_PREDICTIONS = "findAutocompletePredictions"
    let METHOD_FETCH_PLACE = "fetchPlace"
    let METHOD_FETCH_PLACE_PHOTO = "fetchPlacePhoto"
    
    private var placesClient: GMSPlacesClient!
    private var lastSessionToken: GMSAutocompleteSessionToken?
    
    private var photosCache: Dictionary<String, GMSPlacePhotoMetadata> = [:]
    private var runningUid: Int = 1

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: CHANNEL_NAME, binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterGooglePlacesSdkIosPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case METHOD_INITIALIZE:
            let args = call.arguments as? Dictionary<String,Any>
            let apiKey = args?["apiKey"] as! String?
            let useNewApi = args?["useNewApi"] as? Bool ?? false
            // we can't do anything with the locale so no need to read it
            initialize(apiKey: apiKey, useNewApi: useNewApi)
            result(nil)
        case METHOD_DEINITIALIZE:
            // nothing to do
            result(nil)
        case METHOD_IS_INITIALIZE:
            result(placesClient != nil)
        case METHOD_FIND_AUTOCOMPLETE_PREDICTIONS:
            let args = call.arguments as! Dictionary<String,Any>
            let query = args["query"] as! String
            let countries = args["countries"] as? [String]? ?? [String]()
            let placeTypeFilters = args["typesFilter"] as? [String]
            let origin = latLngFromMap(argument: args["origin"] as? Dictionary<String, Any?>)
            let newSessionToken = args["newSessionToken"] as? Bool
            let locationBias = rectangularBoundsFromMap(argument: args["locationBias"] as? Dictionary<String, Any?>)
            let locationRestriction = rectangularBoundsFromMap(argument: args["locationRestriction"] as? Dictionary<String, Any?>)
            let sessionToken = getSessionToken(force: newSessionToken == true)
            
            // Create a type filter.
            let filter = GMSAutocompleteFilter()
            filter.types = placeTypeFilters;
            filter.countries = countries
            filter.origin = origin
            filter.locationBias = locationBias
            filter.locationRestriction = locationRestriction

            placesClient.findAutocompletePredictions(
                fromQuery: query, filter: filter, sessionToken: sessionToken,
                callback: { (results, error) in
                    if let error = error {
                        print("findAutoCompletePredictions error: \(error)")
                        result(FlutterError(
                            code: "API_ERROR",
                            message: error.localizedDescription,
                            details: nil
                        ))
                    } else {
                        self.lastSessionToken = sessionToken
                        let mappedResult = self.responseToList(results: results)
                        result(mappedResult)
                    }
                })
        case METHOD_FETCH_PLACE:
            let args = call.arguments as! Dictionary<String,Any>
            let placeId = args["placeId"] as! String
            let fields = ((args["fields"] as? [String])?.map {
                (item) in return placeFieldFromStr(it: item)
            })?.reduce(GMSPlaceField(), { partialResult, field in
                return GMSPlaceField(rawValue: partialResult.rawValue | field.rawValue)
            })
            let newSessionToken = args["newSessionToken"] as? Bool ?? false
            let sessionToken = getSessionToken(force: newSessionToken == true)
            
            placesClient.fetchPlace(fromPlaceID: placeId,
                                    placeFields: fields ?? GMSPlaceField.all,
                                    sessionToken: sessionToken) { (place, error) in
                if let error = error {
                    print("fetchPlace error: \(error)")
                    result(FlutterError(
                        code: "API_ERROR",
                        message: error.localizedDescription,
                        details: nil
                    ))
                } else {
                    let mappedPlace = self.placeToMap(place: place)
                    result(mappedPlace)
                }
            }
        case METHOD_FETCH_PLACE_PHOTO:
            let args = call.arguments as! Dictionary<String,Any>
            let photoMetadataMap = args["photoMetadata"] as! Dictionary<String,Any>
            let photoRef = photoMetadataMap["photoReference"] as! String
            
            if let photoMetadata = photosCache[photoRef] {
                placesClient.loadPlacePhoto(photoMetadata, callback: { (photo, error) -> Void in
                    if let error = error {
                        print("fetchPlacePhoto error: \(error)")
                        result(FlutterError(
                            code: "API_ERROR_PHOTO",
                            message: error.localizedDescription,
                            details: nil
                        ))
                    } else {
                        let data = photo?.pngData()
                        result(data)
                    }
                })
            } else {
                result(FlutterError(
                    code: "API_ERROR_PHOTO",
                    message: "PhotoMetadata must be initially fetched with fetchPlace",
                    details: ""
                ))
            }
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func placeToMap(place: GMSPlace?) -> Dictionary<String, Any?> {
        guard let place = place else {
            return Dictionary<String, Any?>()
        }
        return [
            "address": place.formattedAddress,
            "addressComponents": place.addressComponents?.map { (it) in return addressComponentToMap(addressComponent: it) },
            "businessStatus": businessStatusToStr(it: place.businessStatus),
            "attributions": place.attributions,
            "latLng": latLngToMap(coordinate: place.coordinate),
            "name": place.name,
            "openingHours": openingHoursToMap(openingHours: place.openingHours),
            "phoneNumber": place.phoneNumber,
            "photoMetadatas": place.photos?.map { (it) in return photoMetadataToMap(photoMetadata: it) },
            "plusCode": plusCodeToMap(plusCode: place.plusCode),
            "priceLevel": place.priceLevel.rawValue,
            "rating": place.rating,
            "types": place.types?.map { (it) in return it.uppercased() },
            "userRatingsTotal": place.userRatingsTotal,
            "utcOffsetMinutes": place.utcOffsetMinutes,
            "viewport": latLngBoundsToMap(viewport: place.viewportInfo),
            "websiteUri": place.website?.absoluteString
        ]
    }
    
    private func businessStatusToStr(it: GMSPlacesBusinessStatus) -> String? {
        switch (it) {
        case GMSPlacesBusinessStatus.operational:
            return "OPERATIONAL";
        case GMSPlacesBusinessStatus.closedTemporarily:
            return "CLOSED_TEMPORARILY";
        case GMSPlacesBusinessStatus.closedPermanently:
            return "CLOSED_PERMANENTLY";
        default:
            return nil;
        }
    }
    
    private func plusCodeToMap(plusCode: GMSPlusCode?) -> Dictionary<String, Any?>? {
        guard let plusCode = plusCode else {
            return nil
        }
        
        return [
            "compoundCode": plusCode.compoundCode,
            "globalCode": plusCode.globalCode
        ]
    }
    
    private func photoMetadataToMap(photoMetadata: GMSPlacePhotoMetadata) -> Dictionary<String, Any?> {
        let photoRef = _getPhotoReference()
        
        photosCache[photoRef] = photoMetadata
        
        return [
            "photoReference": photoRef,
            "width": Int(photoMetadata.maxSize.width),
            "height": Int(photoMetadata.maxSize.height),
            "attributions": photoMetadata.attributions?.string
        ]
    }
    
    private func _getPhotoReference() -> String {
        let num = runningUid
        runningUid += 1
        return "id_" + String(num);
    }
    
    private func openingHoursToMap(openingHours: GMSOpeningHours?) -> Dictionary<String, Any?>? {
        guard let openingHours = openingHours else {
            return nil
        }
        return [
            "periods": openingHours.periods?.map { (it) in return periodToMap(period: it) },
            "weekdayText": openingHours.weekdayText
        ]
    }
    
    private func periodToMap(period: GMSPeriod) -> Dictionary<String, Any?> {
        return [
            "open": timeOfWeekToMap(event: period.openEvent),
            "close": timeOfWeekToMap(event: period.closeEvent)
        ]
    }
    
    private func timeOfWeekToMap(event: GMSEvent?) -> Dictionary<String, Any?>? {
        guard let event = event else {
            return nil
        }
        return [
            "day": dayOfWeekToStr(it: event.day),
            "time": placeLocalTimeToMap(time: event.time)
        ]
    }
    
    private func dayOfWeekToStr(it: GMSDayOfWeek) -> String {
        switch (it) {
        case GMSDayOfWeek.sunday: return "SUNDAY";
        case GMSDayOfWeek.monday: return "MONDAY";
        case GMSDayOfWeek.tuesday: return "TUESDAY";
        case GMSDayOfWeek.wednesday: return "WEDNESDAY";
        case GMSDayOfWeek.thursday: return "THURSDAY";
        case GMSDayOfWeek.friday: return "FRIDAY";
        case GMSDayOfWeek.saturday: return "SATURDAY";
        default: return "NULL";
        }
    }

    private func placeLocalTimeToMap(time: GMSTime) -> Dictionary<String, Any?> {
      return [
        "hours": time.hour,
        "minutes": time.minute
      ]
    }
    
    private func latLngToMap(coordinate: CLLocationCoordinate2D?) -> Any? {
        guard let coordinate = coordinate else {
            return nil
        }
        return [
            "lat": coordinate.latitude,
            "lng": coordinate.longitude
        ]
    }

    private func latLngBoundsToMap(viewport: GMSPlaceViewportInfo?) -> Dictionary<String, Any?>? {
        guard let viewport = viewport else {
            return nil
        }
        return [
            "southwest": latLngToMap(coordinate: viewport.southWest),
            "northeast": latLngToMap(coordinate: viewport.northEast)
        ]
    }

    private func addressComponentToMap(addressComponent: GMSAddressComponent) -> Dictionary<String, Any?> {
      return [
        "name": addressComponent.name,
        "shortName": addressComponent.shortName,
        "types": addressComponent.types
      ]
    }
    
    private func placeFieldFromStr(it: String) -> GMSPlaceField {
        // Handle both PascalCase Dart enum names (e.g., "Viewport") and legacy SCREAMING_SNAKE_CASE
        switch (it) {
        // Dart enum names (PascalCase)
        case "FormattedAddress", "ADDRESS", "FORMATTED_ADDRESS": return GMSPlaceField.formattedAddress
        case "AddressComponents", "ADDRESS_COMPONENTS": return GMSPlaceField.addressComponents
        case "BusinessStatus", "BUSINESS_STATUS": return GMSPlaceField.businessStatus
        case "Id", "ID": return GMSPlaceField.placeID
        case "Location", "LAT_LNG": return GMSPlaceField.coordinate
        case "DisplayName", "NAME": return GMSPlaceField.name
        case "OpeningHours", "OPENING_HOURS": return GMSPlaceField.openingHours
        case "NationalPhoneNumber", "InternationalPhoneNumber", "PHONE_NUMBER": return GMSPlaceField.phoneNumber
        case "Photos", "PHOTO_METADATAS": return GMSPlaceField.photos
        case "PlusCode", "PLUS_CODE": return GMSPlaceField.plusCode
        case "PriceLevel", "PRICE_LEVEL": return GMSPlaceField.priceLevel
        case "Rating", "RATING": return GMSPlaceField.rating
        case "Types", "TYPES": return GMSPlaceField.types
        case "UserRatingCount", "USER_RATINGS_TOTAL", "USER_RATING_COUNT": return GMSPlaceField.userRatingsTotal
        case "UtcOffset", "UTC_OFFSET": return GMSPlaceField.utcOffsetMinutes
        case "Viewport", "VIEWPORT": return GMSPlaceField.viewport
        case "WebsiteUri", "WEBSITE_URI": return GMSPlaceField.website
        // New Places API fields
        case "CurbsidePickup", "CURBSIDE_PICKUP": return GMSPlaceField.curbsidePickup
        case "CurrentOpeningHours", "CURRENT_OPENING_HOURS": return GMSPlaceField.currentOpeningHours
        case "Delivery", "DELIVERY": return GMSPlaceField.delivery
        case "DineIn", "DINE_IN": return GMSPlaceField.dineIn
        case "EditorialSummary", "EDITORIAL_SUMMARY": return GMSPlaceField.editorialSummary
        case "IconBackgroundColor", "ICON_BACKGROUND_COLOR": return GMSPlaceField.iconBackgroundColor
        case "IconMaskUrl", "ICON_MASK_URL": return GMSPlaceField.iconImageURL
        case "Reservable", "RESERVABLE": return GMSPlaceField.reservable
        case "SecondaryOpeningHours", "SECONDARY_OPENING_HOURS": return GMSPlaceField.secondaryOpeningHours
        case "ServesBeer", "SERVES_BEER": return GMSPlaceField.servesBeer
        case "ServesBreakfast", "SERVES_BREAKFAST": return GMSPlaceField.servesBreakfast
        case "ServesBrunch", "SERVES_BRUNCH": return GMSPlaceField.servesBrunch
        case "ServesDinner", "SERVES_DINNER": return GMSPlaceField.servesDinner
        case "ServesLunch", "SERVES_LUNCH": return GMSPlaceField.servesLunch
        case "ServesVegetarianFood", "SERVES_VEGETARIAN_FOOD": return GMSPlaceField.servesVegetarianFood
        case "ServesWine", "SERVES_WINE": return GMSPlaceField.servesWine
        case "Takeout", "TAKEOUT": return GMSPlaceField.takeout
        case "AccessibilityOptions", "ACCESSIBILITY_OPTIONS": return GMSPlaceField.wheelchairAccessibleEntrance
        default:
            fatalError("Invalid placeField: \(it)")
        }
    }
    
    private func responseToList(results: [GMSAutocompletePrediction]?) -> [Dictionary<String, Any?>]? {
        guard let results = results else {
            return nil;
        }
        
        return results.map { (prediction: GMSAutocompletePrediction) in
            return predictionToMap(prediction: prediction) }
    }
    
    private func predictionToMap(prediction: GMSAutocompletePrediction) -> Dictionary<String, Any?> {
        return [
            "placeId": prediction.placeID,
            "distanceMeters": prediction.distanceMeters,
            "primaryText": prediction.attributedPrimaryText.string,
            "secondaryText": prediction.attributedSecondaryText?.string ?? "",
            "fullText": prediction.attributedFullText.string,
            "placeTypes": prediction.types.map { (it) in return it.uppercased() }
        ];
    }

    private func getSessionToken(force: Bool) -> GMSAutocompleteSessionToken! {
        let localToken = lastSessionToken
        if (force || localToken == nil) {
            return GMSAutocompleteSessionToken.init()
        }
        return localToken
    }
    
    private func rectangularBoundsFromMap(argument: Dictionary<String, Any?>?) -> (GMSPlaceLocationBias & GMSPlaceLocationRestriction)? {
        guard let argument = argument,
              let southWest = latLngFromMap(argument: argument["southwest"] as? Dictionary<String, Any?>)?.coordinate as? CLLocationCoordinate2D,
              let northEast = latLngFromMap(argument: argument["northeast"] as? Dictionary<String, Any?>)?.coordinate as? CLLocationCoordinate2D
               else {
            return nil
        }
        
        return GMSPlaceRectangularLocationOption(northEast, southWest);
    }
    
    
    private func latLngFromMap(argument: Dictionary<String, Any?>?) -> CLLocation? {
        guard let argument = argument,
              let lat = argument["lat"] as? Double,
              let lng = argument["lng"] as? Double else {
            return nil
        }
        
        return CLLocation(latitude: lat, longitude: lng)
    }
    
    private func initialize(apiKey: String?, useNewApi: Bool) {
        GMSPlacesClient.provideAPIKey(apiKey ?? "")
        placesClient = GMSPlacesClient.shared()
        // Note: useNewApi is not directly supported in iOS SDK, 
        // the SDK version determines which API is used
    }
}

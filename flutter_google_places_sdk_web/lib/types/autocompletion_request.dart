@JS('google.maps.places')
library places;

import 'package:flutter_google_places_sdk_web/types/map.dart';
import 'package:js/js.dart';

/// google.maps.places.AutocompletionRequest interface
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompletionRequest
@JS()
@anonymous
class AutocompletionRequest {
  /// Create an AutocompletionRequest
  external factory AutocompletionRequest(
      {String input,
      List<String>? types,
      ComponentRestrictions? componentRestrictions,
      LatLngBounds? bounds});

  /// The user entered input string.
  external String get input;

  /// An array of types that the prediction belongs to, for example 'establishment' or 'geocode'.
  external List<String>? get types;

  /// The component restrictions. Component restrictions are used to restrict
  /// predictions to only those within the parent component. For example, the country.
  external ComponentRestrictions? get componentRestriction;

  /// Bounds for prediction biasing. Predictions will be biased towards,
  /// but not restricted to, the given bounds. Both location and radius will be ignored if bounds is set.
  external LatLngBounds? get bounds;
}

/// google.maps.places.ComponentRestrictions interface
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#ComponentRestrictions
@JS()
@anonymous
class ComponentRestrictions {
  /// Create a ComponentRestrictions
  external factory ComponentRestrictions({List<String>? country});

  /// Restricts predictions to the specified country (ISO 3166-1 Alpha-2 country code, case insensitive).
  /// For example, 'us', 'br', or 'au'. You can provide a single one, or an array of up to five country code strings.
  external List<String>? get country;
}

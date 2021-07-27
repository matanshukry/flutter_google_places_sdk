@JS('google.maps.places')
library places;

import 'package:flutter_google_places_sdk_web/types/autocompletion_request.dart';
import 'package:js/js.dart';

/// Contains methods related to retrieving Autocomplete predictions.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompleteService
@JS()
class AutocompleteService {
  /// Creates a new instance of the AutocompleteService.
  external AutocompleteService();

  /// Retrieves place autocomplete predictions based on the supplied autocomplete request.
  ///
  /// Return Value:  Promise<AutocompleteResponse>
  external Object getPlacePredictions(AutocompletionRequest request);

/*
  getPlacePredictions
getPlacePredictions(request[, callback])
Parameters:
request:  AutocompletionRequest The autocompletion request.
callback:  function(Array<AutocompletePrediction> optional, PlacesServiceStatus): void optional A callback accepting an array of AutocompletePrediction objects and a PlacesServiceStatus value as argument.
Return Value:  Promise<AutocompleteResponse>
Retrieves place autocomplete predictions based on the supplied autocomplete request.


getQueryPredictions
getQueryPredictions(request, callback)
Parameters:
request:  QueryAutocompletionRequest The query autocompletion request.
callback:  function(Array<QueryAutocompletePrediction> optional, PlacesServiceStatus): void A callback accepting an array of QueryAutocompletePrediction objects and a PlacesServiceStatus value as argument.
Return Value:  None
Retrieves query autocomplete predictions based on the supplied query autocomplete request.

   */
}

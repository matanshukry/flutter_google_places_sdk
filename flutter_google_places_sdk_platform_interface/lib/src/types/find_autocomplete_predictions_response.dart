import 'package:flutter/foundation.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/autocomplete_predictions.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.findAutocompletePredictions] request
class FindAutocompletePredictionsResponse {
  const FindAutocompletePredictionsResponse(this.predictions);

  /// the AutocompletePrediction list returned by the response.
  final List<AutocompletePrediction> predictions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FindAutocompletePredictionsResponse &&
          runtimeType == other.runtimeType &&
          listEquals(predictions, other.predictions);

  @override
  int get hashCode => predictions.hashCode;

  @override
  String toString() =>
      'FindAutocompletePredictionsResponse{predictions: $predictions}';
}

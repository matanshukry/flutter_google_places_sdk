import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_type.dart';
part 'autocomplete_predictions.freezed.dart';
part 'autocomplete_predictions.g.dart';

/// Represents an autocomplete suggestion of a place,
/// based on a particular text query.
///
/// An AutocompletePrediction includes the description of the suggested place as well as basic details including place ID and types.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/AutocompletePrediction
@freezed
class AutocompletePrediction with _$AutocompletePrediction {
  /// Constructs an [AutocompletePrediction] object.
  const factory AutocompletePrediction({
    /// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
    required int? distanceMeters,

    /// the place ID of the place being referred to by this prediction.
    required String placeId,

    /// the list of place types associated with the place referred to by getPlaceId()
    List<PlaceType>? placeTypes,

    /// the primary text of a place.
    required String primaryText,

    /// the secondary text of a place.
    required String secondaryText,

    /// The full text of a place.
    required String fullText,
  }) = _AutocompletePrediction;

  /// Parse an [AutocompletePrediction] from json.
  factory AutocompletePrediction.fromJson(Map<String, Object?> json) =>
      _$AutocompletePredictionFromJson(json);
}

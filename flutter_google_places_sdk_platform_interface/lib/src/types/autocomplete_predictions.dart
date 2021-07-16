/// Represents an autocomplete suggestion of a place,
/// based on a particular text query.
///
/// An AutocompletePrediction includes the description of the suggested place as well as basic details including place ID and types.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/AutocompletePrediction
class AutocompletePrediction {
  const AutocompletePrediction({
    this.distanceMeters,
    required this.placeId,
    required this.primaryText,
    required this.secondaryText,
    required this.fullText,
  });

  /// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
  final int? distanceMeters;

  /// the place ID of the place being referred to by this prediction.
  final String placeId;

  /// the list of place types associated with the place referred to by getPlaceId()
  // List<Place.Type> placeTypes;

  /// the primary text of a place.
  final String primaryText;

  /// the secondary text of a place.
  final String secondaryText;

  /// The full text of a place.
  final String fullText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AutocompletePrediction &&
          runtimeType == other.runtimeType &&
          distanceMeters == other.distanceMeters &&
          placeId == other.placeId &&
          primaryText == other.primaryText &&
          secondaryText == other.secondaryText &&
          fullText == other.fullText;

  @override
  int get hashCode =>
      distanceMeters.hashCode ^
      placeId.hashCode ^
      primaryText.hashCode ^
      secondaryText.hashCode ^
      fullText.hashCode;

  @override
  String toString() =>
      'AutocompletePrediction{distanceMeters: $distanceMeters, placeId: $placeId, primaryText: $primaryText, secondaryText: $secondaryText, fullText: $fullText}';

  Map<String, dynamic> toMap() => {
        'distanceMeters': distanceMeters,
        'placeId': placeId,
        'primaryText': primaryText,
        'secondaryText': secondaryText,
        'fullText': fullText,
      };

  static AutocompletePrediction fromMap(Map<String, dynamic> map) =>
      AutocompletePrediction(
        distanceMeters: map['distanceMeters'],
        placeId: map['placeId'],
        primaryText: map['primaryText'],
        secondaryText: map['secondaryText'],
        fullText: map['fullText'],
      );
}

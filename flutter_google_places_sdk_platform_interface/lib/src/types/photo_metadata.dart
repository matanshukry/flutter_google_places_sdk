/// The metadata corresponding to a single photo associated with a place.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PhotoMetadata
class PhotoMetadata {
  const PhotoMetadata({
    required this.photoReference,
    required this.width,
    required this.height,
    required this.attributions,
  });

  final String photoReference;
  final int width;
  final int height;
  final String attributions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoMetadata &&
          runtimeType == other.runtimeType &&
          photoReference == other.photoReference &&
          width == other.width &&
          height == other.height &&
          attributions == other.attributions;

  @override
  int get hashCode =>
      photoReference.hashCode ^
      width.hashCode ^
      height.hashCode ^
      attributions.hashCode;

  @override
  String toString() =>
      'PhotoMetadata{photoReference: $photoReference, width: $width, height: $height, attributions: $attributions}';

  Map<String, dynamic> toMap() => {
        'photoReference': photoReference,
        'width': width,
        'height': height,
        'attributions': attributions
      };

  static PhotoMetadata? fromMap(Map<String, dynamic>? map) => map == null
      ? null
      : PhotoMetadata(
          photoReference: map['photoReference'],
          width: map['width'],
          height: map['height'],
          attributions: map['attributions'],
        );
}

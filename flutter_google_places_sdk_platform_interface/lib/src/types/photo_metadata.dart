/// The metadata corresponding to a single photo associated with a place.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PhotoMetadata
class PhotoMetadata {
  const PhotoMetadata({
    required this.attributions,
    required this.width,
    required this.height,
  });

  final String attributions;
  final int width;
  final int height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PhotoMetadata &&
              runtimeType == other.runtimeType &&
              attributions == other.attributions &&
              width == other.width &&
              height == other.height;

  @override
  int get hashCode => attributions.hashCode ^ width.hashCode ^ height.hashCode;

  @override
  String toString() =>
      'PhotoMetadata{attributions: $attributions, width: $width, height: $height}';

  Map<String, dynamic> toMap() =>
      {'attributions': attributions, 'width': width, 'height': height};

  static PhotoMetadata? fromMap(Map<String, dynamic>? map) =>
      map == null ? null : PhotoMetadata(
        attributions: map['attributions'],
        width: map['width'],
        height: map['height'],
      );
}

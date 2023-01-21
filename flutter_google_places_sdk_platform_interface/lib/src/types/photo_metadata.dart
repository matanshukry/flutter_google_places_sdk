import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_metadata.freezed.dart';
part 'photo_metadata.g.dart';

/// The metadata corresponding to a single photo associated with a place.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PhotoMetadata
@freezed
class PhotoMetadata with _$PhotoMetadata {
  const factory PhotoMetadata({
    /// Non-empty String used to identify the underlying photo.
    required String photoReference,

    /// The maximum width in which this photo is available.
    required int width,

    /// The maximum height in which this photo is available.
    required int height,

    /// The attributions that must be shown to the user if this photo is displayed.
    required String attributions,
  }) = _PhotoMetadata;

  /// Parse an [PhotoMetadata] from json.
  factory PhotoMetadata.fromJson(Map<String, Object?> json) =>
      _$PhotoMetadataFromJson(json);
}

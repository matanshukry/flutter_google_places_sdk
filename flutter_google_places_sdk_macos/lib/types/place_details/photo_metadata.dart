import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_metadata.freezed.dart';
part 'photo_metadata.g.dart';

/// The metadata corresponding to a single photo associated with a place.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/PhotoMetadata
@freezed
class PlacePhoto with _$PlacePhoto {
  const factory PlacePhoto({
    /// The maximum height in which this photo is available.
    required int height,

    /// The attributions that must be shown to the user if this photo is displayed.
    @JsonKey(name: 'html_attributions') required List<String> attributions,

    /// Non-empty String used to identify the underlying photo.
    @JsonKey(name: 'photo_reference') required String photoReference,

    /// The maximum width in which this photo is available.
    required int width,
  }) = _PlacePhoto;

  /// Parse an [PlacePhoto] from json.
  factory PlacePhoto.fromJson(Map<String, Object?> json) =>
      _$PlacePhotoFromJson(json);
}

import 'package:flutter_google_places_sdk_platform_interface/src/types/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_place_response.freezed.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.fetchPlace] request
@freezed
class FetchPlaceResponse with _$FetchPlaceResponse {
  /// constructs a [FetchPlaceResponse] object.
  const factory FetchPlaceResponse(
    /// the Place returned by the response.
    Place? place,
  ) = _FetchPlacePhotoResponseImage;
}

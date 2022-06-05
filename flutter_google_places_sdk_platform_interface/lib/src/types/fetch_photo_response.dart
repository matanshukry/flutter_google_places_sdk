import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_photo_response.freezed.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.fetchPlacePhoto] request
@freezed
class FetchPlacePhotoResponse with _$FetchPlacePhotoResponse {
  /// Construct a photo response with image
  const factory FetchPlacePhotoResponse.image(Image image) =
      FetchPlacePhotoResponseImage;

  /// Construct a photo response with image url
  const factory FetchPlacePhotoResponse.imageUrl(String imageUrl) =
      FetchPlacePhotoResponseImageUrl;
}

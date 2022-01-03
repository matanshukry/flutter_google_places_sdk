import 'package:flutter/material.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.fetchPlacePhoto] request
class FetchPlacePhotoResponse {
  /// Construct a photo response with image
  const FetchPlacePhotoResponse.image(this.image) : imageUrl = null;

  /// Construct a photo response with image url
  const FetchPlacePhotoResponse.imageUrl(this.imageUrl) : image = null;

  /// the Image returned by the response.
  final Image? image;

  /// the Image url returned by the response.
  final String? imageUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchPlacePhotoResponse &&
          runtimeType == other.runtimeType &&
          image == other.image &&
          imageUrl == other.imageUrl;

  @override
  int get hashCode => image.hashCode ^ imageUrl.hashCode;

  @override
  String toString() => 'FetchPhotoResponse{image: $image, imageUrl: $imageUrl}';
}

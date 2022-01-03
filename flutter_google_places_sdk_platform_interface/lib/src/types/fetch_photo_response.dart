import 'package:flutter/material.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.fetchPlacePhoto] request
class FetchPlacePhotoResponse {
  const FetchPlacePhotoResponse(this.image);

  /// the Place returned by the response.
  final Image image;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FetchPlacePhotoResponse &&
          runtimeType == other.runtimeType &&
          image == other.image;

  @override
  int get hashCode => image.hashCode;

  @override
  String toString() => 'FetchPhotoResponse{image: $image}';
}

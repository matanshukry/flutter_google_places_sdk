import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';

/// Widget used to display google place image. Used in non-web platforms
class GooglePlacesImg extends StatelessWidget {
  /// The photo metadata
  final PhotoMetadata photoMetadata;

  /// The photo fetch response
  final FetchPlacePhotoResponse placePhotoResponse;

  /// Construct a google place img using metadata and response object
  const GooglePlacesImg(
      {Key? key, required this.photoMetadata, required this.placePhotoResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return placePhotoResponse.maybeWhen(
      image: (image) => image,
      orElse: () => Text('Invalid image'),
    );
  }
}

import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';

/// Widget used to display google place image. Used in web platforms
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
    final imageUrl = placePhotoResponse.imageUrl!;

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(photoMetadata.photoReference,
        (int viewId) => html.Element.img()..setAttribute('src', imageUrl));

    final view = HtmlElementView(viewType: photoMetadata.photoReference);
    return Container(
      width: photoMetadata.width.toDouble(),
      height: photoMetadata.height.toDouble(),
      child: view,
    );
  }
}

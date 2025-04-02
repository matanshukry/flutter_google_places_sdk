import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_by_text_response.freezed.dart';

/// The response for a [FlutterGooglePlacesSdkPlatform.searchByText] request
@Freezed()
sealed class SearchByTextResponse with _$SearchByTextResponse {
  /// constructs a [SearchByTextResponse] object.
  const factory SearchByTextResponse(
    /// the Place list returned by the response.
    List<Place> places,
  ) = _SearchByTextResponse;
}

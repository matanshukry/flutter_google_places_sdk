@JS('google.maps')
library maps;

import 'package:js/js.dart';

/// google.maps.LatLngBounds class
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/coordinates#LatLngBounds
@JS()
class LatLngBounds {
  /// Create a LatLngBounds
  external LatLngBounds(LatLng swOrLatLngBounds, LatLng ne);
}

/// google.maps.LatLng class
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/coordinates#LatLng
@JS()
class LatLng {
  /// Create a LatLng
  external LatLng(num latOrLatLngOrLatLngLiteral, num lng);
}

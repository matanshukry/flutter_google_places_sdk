// @JS('google.maps')
// library maps;
//
// import 'package:flutter/cupertino.dart';
// import 'package:js/js.dart';
//
// // Invokes the JavaScript getter `google.maps.map`.
// external Map get map;
//
// /// MapOptions object used to define the properties that can be set on a Map.
// /// google.maps.MapOptions interface
// ///
// /// Ref: https://developers.google.com/maps/documentation/javascript/reference/map#MapOptions
// @JS()
// class MapOptions {
//   MapOptions({this.backgroundColor = null});
//
//   /// Color used for the background of the Map div. This color will be visible when tiles have not yet loaded as the user pans.
//   /// This option can only be set when the map is initialized.
//   String? backgroundColor;
//
//
//   /*
// center optional
// Type:  LatLng|LatLngLiteral optional
// The initial Map center.
// clickableIcons optional
// Type:  boolean optional
// When false, map icons are not clickable. A map icon represents a point of interest, also known as a POI. By default map icons are clickable.
// controlSize optional
// Type:  number optional
// Size in pixels of the controls appearing on the map. This value must be supplied directly when creating the Map, updating this value later may bring the controls into an undefined state. Only governs the controls made by the Maps API itself. Does not scale developer created custom controls.
// disableDefaultUI optional
// Type:  boolean optional
// Enables/disables all default UI buttons. May be overridden individually. Does not disable the keyboard controls, which are separately controlled by the MapOptions.keyboardShortcuts option. Does not disable gesture controls, which are separately controlled by the MapOptions.gestureHandling option.
// disableDoubleClickZoom optional
// Type:  boolean optional
// Enables/disables zoom and center on double click. Enabled by default.
// Note: This property is not recommended. To disable zooming on double click, you can use the gestureHandling property, and set it to "none".
//
// draggable optional
// Notice: Deprecated in 2017. To disable dragging on the map, you can use the gestureHandling property, and set it to "none".
//
// Type:  boolean optional
// If false, prevents the map from being dragged. Dragging is enabled by default.
// draggableCursor optional
// Type:  string optional
// The name or url of the cursor to display when mousing over a draggable map. This property uses the css cursor attribute to change the icon. As with the css property, you must specify at least one fallback cursor that is not a URL. For example: draggableCursor: 'url(http://www.example.com/icon.png), auto;'.
// draggingCursor optional
// Type:  string optional
// The name or url of the cursor to display when the map is being dragged. This property uses the css cursor attribute to change the icon. As with the css property, you must specify at least one fallback cursor that is not a URL. For example: draggingCursor: 'url(http://www.example.com/icon.png), auto;'.
// fullscreenControl optional
// Type:  boolean optional
// The enabled/disabled state of the Fullscreen control.
// fullscreenControlOptions optional
// Type:  FullscreenControlOptions optional
// The display options for the Fullscreen control.
// gestureHandling optional
// Type:  string optional
// This setting controls how the API handles gestures on the map. Allowed values:
// "cooperative": Scroll events and one-finger touch gestures scroll the page, and do not zoom or pan the map. Two-finger touch gestures pan and zoom the map. Scroll events with a ctrl key or ⌘ key pressed zoom the map.
// In this mode the map cooperates with the page.
// "greedy": All touch gestures and scroll events pan or zoom the map.
// "none": The map cannot be panned or zoomed by user gestures.
// "auto": (default) Gesture handling is either cooperative or greedy, depending on whether the page is scrollable or in an iframe.
// heading optional
// Type:  number optional
// The heading for aerial imagery in degrees measured clockwise from cardinal direction North. Headings are snapped to the nearest available angle for which imagery is available.
// isFractionalZoomEnabled optional
// Notice: Available only in the v=beta channel.
//
// Type:  boolean optional
// Whether the map should allow fractional zoom levels. If not explicitly set to true or false, by default vector maps will allow fractional zoom and raster maps will not. Listen to isfractionalzoomenabled_changed to know when the default has been set.
// keyboardShortcuts optional
// Type:  boolean optional
// If false, prevents the map from being controlled by the keyboard. Keyboard shortcuts are enabled by default.
// mapId optional
// Type:  string optional
// The unique identifier that represents a single instance of a Google Map. You can create Map IDs and update a style associated with a Map ID at any time in the Google Cloud Console Maps Management page without changing embedded JSON styling in your application code.
// mapTypeControl optional
// Type:  boolean optional
// The initial enabled/disabled state of the Map type control.
// mapTypeControlOptions optional
// Type:  MapTypeControlOptions optional
// The initial display options for the Map type control.
// mapTypeId optional
// Type:  MapTypeId|string optional
// The initial Map mapTypeId. Defaults to ROADMAP.
// maxZoom optional
// Type:  number optional
// The maximum zoom level which will be displayed on the map. If omitted, or set to null, the maximum zoom from the current map type is used instead. Valid values: Integers between zero, and up to the supported maximum zoom level.
// minZoom optional
// Type:  number optional
// The minimum zoom level which will be displayed on the map. If omitted, or set to null, the minimum zoom from the current map type is used instead. Valid values: Integers between zero, and up to the supported maximum zoom level.
// noClear optional
// Type:  boolean optional
// If true, do not clear the contents of the Map div.
// panControl optional
// Type:  boolean optional
// The enabled/disabled state of the Pan control.
// Note: The Pan control is not available in the new set of controls introduced in v3.22 of the Google Maps JavaScript API. While using v3.22 and v3.23, you can choose to use the earlier set of controls rather than the new controls, thus making the Pan control available as part of the old control set. See What's New in the v3.22 Map Controls.
//
// panControlOptions optional
// Type:  PanControlOptions optional
// The display options for the Pan control.
// Note: The Pan control is not available in the new set of controls introduced in v3.22 of the Google Maps JavaScript API. While using v3.22 and v3.23, you can choose to use the earlier set of controls rather than the new controls, thus making the Pan control available as part of the old control set. See What's New in the v3.22 Map Controls.
//
// restriction optional
// Type:  MapRestriction optional
// Defines a boundary that restricts the area of the map accessible to users. When set, a user can only pan and zoom while the camera view stays inside the limits of the boundary.
// rotateControl optional
// Type:  boolean optional
// The enabled/disabled state of the Rotate control.
// rotateControlOptions optional
// Type:  RotateControlOptions optional
// The display options for the Rotate control.
// scaleControl optional
// Type:  boolean optional
// The initial enabled/disabled state of the Scale control.
// scaleControlOptions optional
// Type:  ScaleControlOptions optional
// The initial display options for the Scale control.
// scrollwheel optional
// Type:  boolean optional
// If false, disables zooming on the map using a mouse scroll wheel. The scrollwheel is enabled by default.
// Note: This property is not recommended. To disable zooming using scrollwheel, you can use the gestureHandling property, and set it to either "cooperative" or "none".
//
// streetView optional
// Type:  StreetViewPanorama optional
// A StreetViewPanorama to display when the Street View pegman is dropped on the map. If no panorama is specified, a default StreetViewPanorama will be displayed in the map's div when the pegman is dropped.
// streetViewControl optional
// Type:  boolean optional
// The initial enabled/disabled state of the Street View Pegman control. This control is part of the default UI, and should be set to false when displaying a map type on which the Street View road overlay should not appear (e.g. a non-Earth map type).
// streetViewControlOptions optional
// Type:  StreetViewControlOptions optional
// The initial display options for the Street View Pegman control.
// styles optional
// Type:  Array<MapTypeStyle> optional
// Styles to apply to each of the default map types. Note that for satellite/hybrid and terrain modes, these styles will only apply to labels and geometry.
// tilt optional
// Type:  number optional
// For vector maps, sets the angle of incidence of the map. The allowed values are restricted depending on the zoom level of the map. For raster maps, controls the automatic switching behavior for the angle of incidence of the map. The only allowed values are 0 and 45. The value 0 causes the map to always use a 0° overhead view regardless of the zoom level and viewport. The value 45 causes the tilt angle to automatically switch to 45 whenever 45° imagery is available for the current zoom level and viewport, and switch back to 0 whenever 45° imagery is not available (this is the default behavior). 45° imagery is only available for satellite and hybrid map types, within some locations, and at some zoom levels. Note: getTilt returns the current tilt angle, not the value specified by this option. Because getTilt and this option refer to different things, do not bind() the tilt property; doing so may yield unpredictable effects.
// zoom optional
// Type:  number optional
// The initial Map zoom level. Valid values: Integers between zero, and up to the supported maximum zoom level.
// zoomControl optional
// Type:  boolean optional
// The enabled/disabled state of the Zoom control.
// zoomControlOptions optional
// Type:  ZoomControlOptions optional
// The display options for the Zoom control.
//    */
// }
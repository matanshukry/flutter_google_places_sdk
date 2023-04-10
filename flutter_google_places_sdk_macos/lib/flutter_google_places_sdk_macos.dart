import 'package:flutter_google_places_sdk_http/flutter_google_places_sdk_http.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

/// Web implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkMacosPlugin
    extends FlutterGooglePlacesSdkHttpPlugin {
  /// Registers this class as the default instance of [FlutterGooglePlacesSdkPlatform].
  static void registerWith() {
    FlutterGooglePlacesSdkPlatform.instance =
        FlutterGooglePlacesSdkMacosPlugin();
  }
}

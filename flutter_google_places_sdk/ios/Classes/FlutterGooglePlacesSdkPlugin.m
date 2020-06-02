#import "FlutterGooglePlacesSdkPlugin.h"
#if __has_include(<flutter_google_places_sdk/flutter_google_places_sdk-Swift.h>)
#import <flutter_google_places_sdk/flutter_google_places_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_google_places_sdk-Swift.h"
#endif

@implementation FlutterGooglePlacesSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterGooglePlacesSdkPlugin registerWithRegistrar:registrar];
}
@end

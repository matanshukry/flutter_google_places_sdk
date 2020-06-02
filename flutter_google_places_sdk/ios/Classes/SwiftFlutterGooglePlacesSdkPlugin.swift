import Flutter
import UIKit

public class SwiftFlutterGooglePlacesSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_google_places_sdk", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterGooglePlacesSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

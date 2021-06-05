import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_channel_flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import 'method_channel_flutter_google_places_sdk_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<void> _testIcon(WidgetTester tester, AssetImage asset) async {
    await tester.pumpWidget(Builder(
      builder: (context) {
        return MaterialApp(
            home: Image(
          image: asset,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return const Text('completed');
          },
          errorBuilder: (context, error, stackTrace) {
            return Container();
          },
        ));
      },
    ));

    await tester.pumpAndSettle();
    expect(find.byType(Text), findsOneWidget);
  }

  group('$FlutterGooglePlacesSdkPlatform', () {
    test('$FlutterGooglePlacesSdkMethodChannel() is the default instance', () {
      expect(FlutterGooglePlacesSdkPlatform.instance,
          isInstanceOf<FlutterGooglePlacesSdkMethodChannel>());
    });

    testWidgets('White Asset icon is valid', (WidgetTester tester) async {
      _testIcon(tester,
          FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_WHITE);
    });

    testWidgets('Non-White Asset icon is valid', (WidgetTester tester) async {
      _testIcon(tester,
          FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_NON_WHITE);
    });

    test('Cannot be implemented with `implements`', () {
      expect(() {
        FlutterGooglePlacesSdkPlatform.instance =
            ImplementsFlutterGooglePlacesSdkPlatform();
      }, throwsA(isInstanceOf<AssertionError>()));
    });

    test('Can be mocked with `implements`', () {
      final mock = FlutterGooglePlacesSdkPlatformMock();
      FlutterGooglePlacesSdkPlatform.instance = mock;
    });

    test('Can be extended', () {
      FlutterGooglePlacesSdkPlatform.instance =
          ExtendsFlutterGooglePlacesSdkPlatform();
    });
  });
}

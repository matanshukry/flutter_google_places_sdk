import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_channel_flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('$FlutterGooglePlacesSdkMethodChannel', () {
    const channel = MethodChannel('plugins.msh.com/flutter_google_places_sdk');
    final List<MethodCall> log = <MethodCall>[];
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      log.add(methodCall);
    });

    final places = FlutterGooglePlacesSdkMethodChannel();

    tearDown(() {
      log.clear();
    });

    test('initialize', () async {
      const testKey = 'my-key';
      await places.initialize(testKey, locale: const Locale('en'));
      expect(
        log,
        <Matcher>[
          isMethodCall('initialize', arguments: <String, Object>{
            'apiKey': testKey,
            'locale': {
              'country': null,
              'language': 'en',
            },
          })
        ],
      );
    });

    test('deinitialize', () async {
      await places.deinitialize();
      expect(
        log,
        <Matcher>[isMethodCall('deinitialize', arguments: null)],
      );
    });

    test('isInitialized', () async {
      await places.isInitialized();
      expect(
        log,
        <Matcher>[isMethodCall('isInitialized', arguments: null)],
      );
    });

    test('findAutocompletePredictions', () async {
      const testQuery = 'my-test-query';
      const testCountries = ['c1', 'c2'];
      const newSessionToken = true;
      const origin = LatLng(lat: 325.21, lng: -952.52);
      await places.findAutocompletePredictions(
        testQuery,
        countries: testCountries,
        placeTypeFilter: PlaceTypeFilter.CITIES,
        newSessionToken: newSessionToken,
        origin: origin,
      );
      expect(
        log,
        <Matcher>[
          isMethodCall('findAutocompletePredictions',
              arguments: <String, Object>{
                'query': testQuery,
                'countries': testCountries,
                'typeFilter': 'CITIES',
                'newSessionToken': newSessionToken,
                'origin': origin.toMap()
              })
        ],
      );
    });

    test('fetchPlace', () async {
      const placeId = 'my-test-place-id';
      const testFields = [PlaceField.Location, PlaceField.Address];
      const newSessionToken = true;
      await places.fetchPlace(
        placeId,
        fields: testFields,
        newSessionToken: newSessionToken,
      );
      expect(
        log,
        <Matcher>[
          isMethodCall('fetchPlace', arguments: <String, Object>{
            'placeId': placeId,
            'fields': testFields.map((e) => e.value).toList(growable: false),
            'newSessionToken': newSessionToken,
          })
        ],
      );
    });
  });
}

class FlutterGooglePlacesSdkPlatformMock extends Mock
    with MockPlatformInterfaceMixin
    implements FlutterGooglePlacesSdkPlatform {}

class ImplementsFlutterGooglePlacesSdkPlatform extends Mock
    implements FlutterGooglePlacesSdkPlatform {}

class ExtendsFlutterGooglePlacesSdkPlatform
    extends FlutterGooglePlacesSdkPlatform {}

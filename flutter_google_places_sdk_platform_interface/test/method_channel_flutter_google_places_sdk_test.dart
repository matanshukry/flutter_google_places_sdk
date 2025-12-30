import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_channel_flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('$FlutterGooglePlacesSdkMethodChannel', () {
    final handlers = <Future<dynamic>? Function(MethodCall call)>[];

    const channel = MethodChannel('plugins.msh.com/flutter_google_places_sdk');
    final List<MethodCall> log = <MethodCall>[];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        log.add(methodCall);
        for (final callback in handlers) {
          final result = callback(methodCall);
          if (result != null) {
            return result;
          }
        }
        return null;
      },
    );

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
      const locationBias =
          LatLngBounds(southwest: LatLng(lat: 125.43, lng: 38.32), northeast: LatLng(lat: -38.271, lng: 312.53));
      const locationRestriction =
          LatLngBounds(southwest: LatLng(lat: 49.28, lng: 3921.38), northeast: LatLng(lat: 38.64, lng: 23.32));
      await places.findAutocompletePredictions(testQuery,
          countries: testCountries,
          placeTypesFilter: ['(cities)'],
          newSessionToken: newSessionToken,
          origin: origin,
          locationBias: locationBias,
          locationRestriction: locationRestriction);
      expect(
        log,
        <Matcher>[
          isMethodCall('findAutocompletePredictions', arguments: <String, Object>{
            'query': testQuery,
            'countries': testCountries,
            'typesFilter': ['(cities)'],
            'newSessionToken': newSessionToken,
            'origin': origin.toJson(),
            'locationBias': locationBias.toJson(),
            'locationRestriction': locationRestriction.toJson(),
          })
        ],
      );
    });

    test('fetchPlace', () async {
      const placeId = 'my-test-place-id';
      const testFields = [PlaceField.Location, PlaceField.FormattedAddress];
      const newSessionToken = true;
      await places.fetchPlace(
        placeId,
        fields: testFields,
        newSessionToken: newSessionToken,
        regionCode: 'us',
      );
      expect(
        log,
        <Matcher>[
          isMethodCall('fetchPlace', arguments: <String, Object>{
            'placeId': placeId,
            'fields': testFields.map((e) => e.value).toList(growable: false),
            'newSessionToken': newSessionToken,
            'regionCode': 'us',
          })
        ],
      );
    });

    Future<Uint8List> _createImage() async {
      final paint = Paint();
      final recorder = PictureRecorder();
      final Canvas canvas = Canvas(recorder);
      canvas.drawPaint(paint); // etc

      final picture = recorder.endRecording();
      final image = await picture.toImage(100, 100);
      final byteData = await image.toByteData(format: ImageByteFormat.png);
      final buffer = byteData!.buffer;
      return buffer.asUint8List();
    }

    test('fetchPlacePhoto', () async {
      const photoRef = 'http://google.com/photo/ref/1';
      const photoMetadata = PhotoMetadata(photoReference: photoRef, width: 100, height: 100, attributions: 'attr');
      const maxWidth = 50;

      // Mock
      final handler = (methodCall) async {
        log.add(methodCall);
        if (methodCall.method == 'fetchPlacePhoto') {
          return await _createImage();
        }
        return null;
      };

      handlers.add(handler);
      try {
        // call
        await places.fetchPlacePhoto(photoMetadata, maxWidth: maxWidth, maxHeight: null);

        expect(
          log,
          <Matcher>[
            isMethodCall('fetchPlacePhoto', arguments: <String, Object?>{
              'photoMetadata': {
                'photoReference': photoMetadata.photoReference,
                'width': photoMetadata.width,
                'height': photoMetadata.height,
              },
              'maxWidth': maxWidth,
              'maxHeight': null,
            })
          ],
        );
      } catch (err) {
        handlers.remove(handler);
      }
    });

    test('searchByText', () async {
      const testQuery = 'my-test-query';
      const locationBias =
          LatLngBounds(southwest: LatLng(lat: 125.43, lng: 38.32), northeast: LatLng(lat: -38.271, lng: 312.53));
      const locationRestriction =
          LatLngBounds(southwest: LatLng(lat: 49.28, lng: 3921.38), northeast: LatLng(lat: 38.64, lng: 23.32));
      await places.searchByText(
        testQuery,
        fields: [PlaceField.Id, PlaceField.DisplayName],
        openNow: true,
        regionCode: 'eu',
        rankPreference: TextSearchRankPreference.Distance,
        minRating: 1.0,
        maxResultCount: 9,
        locationBias: locationBias,
        locationRestriction: locationRestriction,
        priceLevels: [1, 2, 3],
        strictTypeFiltering: false,
        includedType: 'test',
      );
      expect(
        log,
        <Matcher>[
          isMethodCall(
            'searchByText',
            arguments: <String, Object>{
              'textQuery': testQuery,
              'fields': ['ID', 'NAME'],
              'includedType': 'test',
              'maxResultCount': 9,
              'locationBias': locationBias.toJson(),
              'locationRestriction': locationRestriction.toJson(),
              'minRating': 1.0,
              'openNow': true,
              'priceLevels': [1, 2, 3],
              'rankPreference': 'DISTANCE',
              'regionCode': 'eu',
              'strictTypeFiltering': false,
            },
          )
        ],
      );
    });

    test('searchNearby', () async {
      const types = ['test1', 'test2'];
      const locationRestriction = CircularBounds(
        center: LatLng(lat: 125.43, lng: 38.32),
        radius: 1000,
      );
      await places.searchNearby(
          fields: [PlaceField.Id, PlaceField.DisplayName],
          locationRestriction: locationRestriction,
          includedTypes: types,
          includedPrimaryTypes: types,
          excludedTypes: types,
          excludedPrimaryTypes: types,
          rankPreference: NearbySearchRankPreference.Popularity,
          maxResultCount: 3,
          regionCode: 'us');

      expect(
        log,
        <Matcher>[
          isMethodCall(
            'searchNearby',
            arguments: <String, Object>{
              'fields': ['ID', 'NAME'],
              'locationRestriction': locationRestriction.toJson(),
              'includedTypes': types,
              'includedPrimaryTypes': types,
              'excludedTypes': types,
              'excludedPrimaryTypes': types,
              'rankPreference': 'POPULARITY',
              'regionCode': 'us',
              'maxResultCount': 3,
            },
          )
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

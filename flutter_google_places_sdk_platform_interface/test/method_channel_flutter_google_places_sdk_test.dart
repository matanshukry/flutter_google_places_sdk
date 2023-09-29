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
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      log.add(methodCall);
      for (final callback in handlers) {
        final result = callback(methodCall);
        if (result != null) {
          return result;
        }
      }
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
      const locationBias = LatLngBounds(
          southwest: LatLng(lat: 125.43, lng: 38.32),
          northeast: LatLng(lat: -38.271, lng: 312.53));
      const locationRestriction = LatLngBounds(
          southwest: LatLng(lat: 49.28, lng: 3921.38),
          northeast: LatLng(lat: 38.64, lng: 23.32));
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
          isMethodCall('findAutocompletePredictions',
              arguments: <String, Object>{
                'query': testQuery,
                'countries': testCountries,
                'typesFilter': '(cities)',
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
      const photoMetadata = PhotoMetadata(
          photoReference: photoRef,
          width: 100,
          height: 100,
          attributions: 'attr');
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
        await places.fetchPlacePhoto(photoMetadata,
            maxWidth: maxWidth, maxHeight: null);

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
  });
}

class FlutterGooglePlacesSdkPlatformMock extends Mock
    with MockPlatformInterfaceMixin
    implements FlutterGooglePlacesSdkPlatform {}

class ImplementsFlutterGooglePlacesSdkPlatform extends Mock
    implements FlutterGooglePlacesSdkPlatform {}

class ExtendsFlutterGooglePlacesSdkPlatform
    extends FlutterGooglePlacesSdkPlatform {}

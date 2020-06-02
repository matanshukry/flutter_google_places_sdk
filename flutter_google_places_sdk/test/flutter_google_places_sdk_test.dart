import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show MethodCall, MethodChannel;
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_chanel_flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel =
  MethodChannel(FlutterGooglePlacesSdkMethodChannel.CHANNEL_NAME);

//  final mock = FlutterGooglePlacesSdkPlatformMock();
//  FlutterGooglePlacesSdkPlatform.instance = mock;

  final List<MethodCall> log = <MethodCall>[];
  FlutterGooglePlacesSdk flutterGooglePlacesSdk;

  const kPrediction1 = AutocompletePrediction(
    placeId: 'mwzmsk-iamsdcim',
    distanceMeters: 5123,
    primaryText: 'ptext3',
    secondaryText: 'stext5',
    fullText: 'ftext6',
  );
  const kPrediction2 = AutocompletePrediction(
    placeId: 'dcc',
    distanceMeters: 0,
    primaryText: 'ptext1',
    secondaryText: 'stext515',
    fullText: 'ftext6cad',
  );

  final kDefaultResponses = <dynamic, dynamic>{
    'findAutocompletePredictions': <dynamic>[
      kPrediction1.toMap(),
      kPrediction2.toMap()
    ]
  };

  const String kDefaultApiKey = 'test-api-key-23';
  const Locale kDefaultLocale = Locale('he');

  Map<String, dynamic> responses;

  Matcher _getInitializeMatcher() {
    return isMethodCall('initialize', arguments: {
      'apiKey': kDefaultApiKey,
      'locale': <String, dynamic>{
        'country': kDefaultLocale.countryCode,
        'language': kDefaultLocale.languageCode,
      },
    });
  }

  group('FlutterGooglePlacesSdk', () {
    setUp(() {
      responses = Map<String, dynamic>.from(kDefaultResponses);
      channel.setMockMethodCallHandler((MethodCall methodCall) {
        log.add(methodCall);
        final dynamic response = responses[methodCall.method];
        if (response != null && response is Exception) {
          return Future<dynamic>.error('$response');
        }
        return Future<dynamic>.value(response);
      });
      flutterGooglePlacesSdk = FlutterGooglePlacesSdk(
          apiKey: kDefaultApiKey, locale: kDefaultLocale);
      log.clear();
    });

    group('isInitialized', () {
      test('returns true', () async {
        responses['isInitialized'] = true;
        final bool result = await flutterGooglePlacesSdk.isInitialized();

        expect(log, <Matcher>[
          _getInitializeMatcher(),
          isMethodCall('isInitialized', arguments: null)
        ]);
        expect(result, isTrue);
      });

      test('returns false', () async {
        responses['isInitialized'] = false;
        final bool result = await flutterGooglePlacesSdk.isInitialized();

        expect(log, <Matcher>[
          _getInitializeMatcher(),
          isMethodCall('isInitialized', arguments: null)
        ]);
        expect(result, isFalse);
      });
    });

    group('findAutocompletePredictions', () {
//      test('requires a non-null query', () {
//        expect(() => flutterGooglePlacesSdk.findAutocompletePredictions(null),
//            throwsArgumentError);
//      });

      test('default behavior', () async {
        const queryTest = 'my-query-text';
        const countriesTest = ['c5', 'c32'];
        final result = await flutterGooglePlacesSdk
            .findAutocompletePredictions(queryTest, countries: countriesTest);

        expect(
          log,
          <Matcher>[
            _getInitializeMatcher(),
            isMethodCall('findAutocompletePredictions',
                arguments: <String, dynamic>{
                  'query': queryTest,
                  'countries': countriesTest,
                }),
          ],
        );

        final expected = FindAutocompletePredictionsResponse([kPrediction1, kPrediction2]);
        expect(result, equals(expected));
      });
    });
  });
}

//class FlutterGooglePlacesSdkPlatformMock extends Mock
//    with MockPlatformInterfaceMixin
//    implements FlutterGooglePlacesSdkPlatform {}

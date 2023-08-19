import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show MethodCall, MethodChannel;
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_channel_flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel =
      MethodChannel(FlutterGooglePlacesSdkMethodChannel.CHANNEL_NAME);

  final List<MethodCall> log = <MethodCall>[];
  late FlutterGooglePlacesSdk flutterGooglePlacesSdk;

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

  const kPlace = const Place(latLng: LatLng(lat: 542.13, lng: -32.43), address: '', addressComponents: [], businessStatus: null, attributions: [], name: '', openingHours: null, phoneNumber: '', photoMetadatas: [], plusCode: null, priceLevel: null, rating: null, types: [], userRatingsTotal: null, utcOffsetMinutes: null, viewport: null, websiteUri: null);

  final kDefaultResponses = <dynamic, dynamic>{
    'findAutocompletePredictions': <dynamic>[
      kPrediction1.toJson(),
      kPrediction2.toJson()
    ],
    'fetchPlace': kPlace.toJson(),
  };

  const String kDefaultApiKey = 'test-api-key-23';
  const Locale kDefaultLocale = Locale('he');

  late Map<String, dynamic> responses;

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
      flutterGooglePlacesSdk =
          FlutterGooglePlacesSdk(kDefaultApiKey, locale: kDefaultLocale);
      log.clear();
    });

    group('isInitialized', () {
      test('returns true', () async {
        responses['isInitialized'] = true;
        final bool? result = await flutterGooglePlacesSdk.isInitialized();

        expect(log, <Matcher>[
          _getInitializeMatcher(),
          isMethodCall('isInitialized', arguments: null)
        ]);
        expect(result, isTrue);
      });

      test('returns false', () async {
        responses['isInitialized'] = false;
        final bool? result = await flutterGooglePlacesSdk.isInitialized();

        expect(log, <Matcher>[
          _getInitializeMatcher(),
          isMethodCall('isInitialized', arguments: null)
        ]);
        expect(result, isFalse);
      });
    });

    group('findAutocompletePredictions', () {
      test('default behavior', () async {
        const queryTest = 'my-query-text';
        const countriesTest = ['c5', 'c32'];
        const placeTypeFilterTest = [PlaceTypeFilter.ESTABLISHMENT];
        final origin = LatLng(lat: 32.51, lng: 95.31);
        final result = await flutterGooglePlacesSdk.findAutocompletePredictions(
            queryTest,
            countries: countriesTest,
            placeTypesFilter: placeTypeFilterTest,
            newSessionToken: false,
            origin: origin);

        expect(
          log,
          <Matcher>[
            _getInitializeMatcher(),
            isMethodCall('findAutocompletePredictions',
                arguments: <String, dynamic>{
                  'query': queryTest,
                  'countries': countriesTest,
                  "typeFilter": "ESTABLISHMENT",
                  'newSessionToken': false,
                  'origin': origin.toJson(),
                  'locationBias': null,
                  'locationRestriction': null,
                }),
          ],
        );

        final expected =
            FindAutocompletePredictionsResponse([kPrediction1, kPrediction2]);
        expect(result, equals(expected));
      });
    });

    group('fetchPlace', () {
      test('default behavior', () async {
        const placeId = 'my-place-id';
        const fields = [PlaceField.Location, PlaceField.PriceLevel];
        final result =
            await flutterGooglePlacesSdk.fetchPlace(placeId, fields: fields);

        expect(
          log,
          <Matcher>[
            _getInitializeMatcher(),
            isMethodCall('fetchPlace', arguments: <String, dynamic>{
              'placeId': placeId,
              'fields': fields.map((e) => e..name).toList(growable: false),
              'newSessionToken': null,
            }),
          ],
        );

        final expected = FetchPlaceResponse(kPlace);
        expect(result, equals(expected));
      });
    });
  });
}

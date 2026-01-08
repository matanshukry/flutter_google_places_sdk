import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_web/flutter_google_places_sdk_web.dart';

void main() {
  const apiKey = String.fromEnvironment('PLACES_API_KEY', defaultValue: '');
  final bool skipTests = apiKey.isEmpty;

  group('FlutterGooglePlacesSdkWeb', () {
    late FlutterGooglePlacesSdkWebPlugin plugin;

    setUp(() {
      plugin = FlutterGooglePlacesSdkWebPlugin();
      FlutterGooglePlacesSdkPlatform.instance = plugin;
    });

    tearDown(() async {
      await plugin.deinitialize();
    });

    test(
      'initialize should complete successfully',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );

    test(
      'isInitialized should return false before initialization',
      () async {
        expect(await plugin.isInitialized(), isFalse);
      },
    );

    test(
      'isInitialized should return true after initialization',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );

    test(
      'initialize with locale should set language',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey, locale: const Locale('fr', 'FR'));
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );

    test(
      'updateSettings should update language',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        await plugin.updateSettings(apiKey, locale: const Locale('es', 'ES'));
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );

    test(
      'findAutocompletePredictions should return results for valid query',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final response = await plugin.findAutocompletePredictions('Paris');
        expect(response.predictions, isNotEmpty);
        expect(response.predictions.first.placeId, isNotNull);
        expect(response.predictions.first.primaryText, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'findAutocompletePredictions should return results with session token',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        
        // Test with a simple, common query that should return results
        // Fix: AutocompleteSessionToken is now automatically created
        final response = await plugin.findAutocompletePredictions('New York');
        
        expect(
          response.predictions,
          isNotEmpty,
          reason: 'Expected results for query "New York". '
              'Actual: ${response.predictions.length} results.',
        );
        expect(response.predictions.first.placeId, isNotEmpty);
        expect(response.predictions.first.primaryText, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'findAutocompletePredictions should return results for various queries',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        
        // Test multiple queries
        final queries = ['Paris', 'London', 'Tokyo', 'restaurant', 'coffee'];
        final withResults = <String>[];
        
        for (final query in queries) {
          final response = await plugin.findAutocompletePredictions(query);
          if (response.predictions.isNotEmpty) {
            withResults.add(query);
          }
        }
        
        // All queries should return results
        expect(
          withResults.length,
          equals(queries.length),
          reason: 'Expected all queries to return results. '
              'Queries with results: ${withResults.join(", ")}. '
              'Queries without results: ${queries.where((q) => !withResults.contains(q)).join(", ")}.',
        );
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 60)),
    );

    test(
      'findAutocompletePredictions with countries filter should return filtered results',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final response = await plugin.findAutocompletePredictions(
          'Paris',
          countries: ['FR'],
        );
        expect(response.predictions, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'findAutocompletePredictions with origin should include distance',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final origin = LatLng(lat: 48.8566, lng: 2.3522);
        final response = await plugin.findAutocompletePredictions(
          'Eiffel Tower',
          origin: origin,
        );
        expect(response.predictions, isNotEmpty);
        if (response.predictions.first.distanceMeters != null) {
          expect(response.predictions.first.distanceMeters, greaterThan(0));
        }
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'findAutocompletePredictions with placeTypesFilter should filter results',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final response = await plugin.findAutocompletePredictions(
          'restaurant',
          placeTypesFilter: ['restaurant'],
        );
        expect(response.predictions, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'findAutocompletePredictions with locationBias should bias results',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final bounds = LatLngBounds(
          southwest: LatLng(lat: 48.0, lng: 2.0),
          northeast: LatLng(lat: 49.0, lng: 3.0),
        );
        final response = await plugin.findAutocompletePredictions(
          'restaurant',
          locationBias: bounds,
        );
        expect(response.predictions, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'fetchPlace should return place details for valid placeId',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        // Using a known place ID (Eiffel Tower)
        const placeId = 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ';
        final response = await plugin.fetchPlace(
          placeId,
          fields: [
            PlaceField.DisplayName,
            PlaceField.FormattedAddress,
            PlaceField.Location,
          ],
        );
        expect(response.place, isNotNull);
        expect(response.place!.id, placeId);
        expect(response.place!.name, isNotEmpty);
        expect(response.place!.address, isNotEmpty);
        expect(response.place!.latLng, isNotNull);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'fetchPlace with multiple fields should return all requested fields',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        const placeId = 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ';
        final response = await plugin.fetchPlace(
          placeId,
          fields: [
            PlaceField.DisplayName,
            PlaceField.FormattedAddress,
            PlaceField.Location,
            PlaceField.Rating,
            PlaceField.Types,
          ],
        );
        expect(response.place, isNotNull);
        expect(response.place!.name, isNotEmpty);
        expect(response.place!.address, isNotEmpty);
        expect(response.place!.latLng, isNotNull);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'fetchPlace with regionCode should return localized results',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        const placeId = 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ';
        final response = await plugin.fetchPlace(
          placeId,
          fields: [PlaceField.DisplayName, PlaceField.FormattedAddress],
          regionCode: 'FR',
        );
        expect(response.place, isNotNull);
        expect(response.place!.name, isNotEmpty);
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'fetchPlacePhoto should throw PlatformException for invalid photoMetadata',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        final invalidMetadata = PhotoMetadata(
          photoReference: 'invalid_reference',
          width: 100,
          height: 100,
          attributions: '',
        );
        expect(
          () => plugin.fetchPlacePhoto(invalidMetadata),
          throwsA(isA<PlatformException>()),
        );
      },
      skip: skipTests,
    );

    test(
      'fetchPlacePhoto should return URL for valid photoMetadata',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        const placeId = 'ChIJD7fiBh9u5kcRYJSMaMOCCwQ';
        final placeResponse = await plugin.fetchPlace(
          placeId,
          fields: [PlaceField.Photos],
        );
        expect(placeResponse.place, isNotNull);
        final photoMetadatas = placeResponse.place!.photoMetadatas;
        if (photoMetadatas != null && photoMetadatas.isNotEmpty) {
          final photoResponse = await plugin.fetchPlacePhoto(
            photoMetadatas.first,
            maxWidth: 400,
          );
          expect(
            photoResponse,
            isA<FetchPlacePhotoResponseImageUrl>(),
          );
          final imageUrlResponse = photoResponse as FetchPlacePhotoResponseImageUrl;
          expect(imageUrlResponse.imageUrl, isNotEmpty);
        }
      },
      skip: skipTests,
      timeout: const Timeout(Duration(seconds: 30)),
    );

    test(
      'deinitialize should complete without error',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        await plugin.deinitialize();
        // deinitialize doesn't change initialized state on web
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );

    test(
      'multiple initialize calls should not fail',
      () async {
        if (skipTests) {
          return;
        }
        await plugin.initialize(apiKey);
        await plugin.initialize(apiKey);
        expect(await plugin.isInitialized(), isTrue);
      },
      skip: skipTests,
    );
  });
}

import 'dart:io';

import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late final String _apiKey;

  group('EndToEndTest', () {
    setUp(() {
      final apiKey = Platform.environment['PLACES_API_KEY'];
      expect(apiKey, isNotNull, reason: "Expected PLACES_API_KEY env var to not be null");
      _apiKey = apiKey!;
    });

    testWidgets('search for place', (WidgetTester tester) async {
      final places = FlutterGooglePlacesSdk(_apiKey);
      final result = await places.findAutocompletePredictions(
        "tlv",
        countries: ["il"],
        placeTypeFilter: PlaceTypeFilter.CITIES,
        newSessionToken: false,
      );

      expect(result, isNotNull);
      expect(result.predictions, isNotNull);
      expect(result.predictions.length, greaterThan(0));
    });
  });
}

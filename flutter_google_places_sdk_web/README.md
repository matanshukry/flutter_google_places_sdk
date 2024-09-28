# flutter_google_places_web

[![pub package](https://img.shields.io/pub/v/flutter_google_places_sdk_web.svg)](https://pub.dartlang.org/packages/flutter_google_places_sdk_web)

![Tests](https://github.com/matanshukry/flutter_google_places_sdk/actions/workflows/tests_web.yml/badge.svg)

The web implementation
of [`flutter_google_places_web`](https://pub.dartlang.org/packages/flutter_google_places_sdk).

## Restrictions

## fetchPlacePhoto

* Since `0.1.8`: `fetchPlacePhoto` no longer use the maxWidth/maxHeight parameter since
  they're not available in the getUrl method

### updateSettings

* The `updateSettings` method will only update the language. Api Key can not be changed at runtime.
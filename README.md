# flutter_google_places_sdk

[![pub package](https://img.shields.io/pub/v/flutter_google_places_sdk.svg)](https://pub.dartlang.org/packages/flutter_google_places_sdk)

![Tests](https://github.com/matanshukry/flutter_google_places_sdk/actions/workflows/tests.yml/badge.svg)

A Flutter plugin for google places sdk that uses the native libraries on each platform.
Check out [Rational](##RATIONAL) below to understand why you should use this plugin.

## Usage

To use this plugin, add `flutter_google_places_sdk` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

## Web Usage

When using the web support you also need to enable the Maps JavaScript API in google cloud:

https://developers.google.com/maps/documentation/javascript/get-api-key

Limits:
* Location restriction is not supported. See google issue tracker for more info: https://issuetracker.google.com/issues/36219203

add this script to your index.html . you can combine with another google maps library, more info: https://developers.google.com/maps/documentation/javascript/libraries#libraries-for-dynamic-library-import

```dart
<script src="https://maps.googleapis.com/maps/api/js?key={YOUR_API_KEY}&libraries=places&callback=initMap"></script>
```

## Rational

By now you probably found some other plugins, and wondering why this one was even created.
Well, there's a good reason for that.

All other plugins will use http web requests rather than the native sdk.

Google allows you to limit the usage of your api key to your android application.
However, that only works when you're using the native SDK.

So when using the http web requests method, you can't actually limit it,
and if someone can get your API key (usually not a problem if it's in a mobile client),
it can be used anywhere outside of it.

## Example

``` dart
import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final places = FlutterGooglePlacesSdk('my-key');
            final predictions =
                await places.findAutocompletePredictions('Tel Aviv');
            print('Result: $predictions');
          },
          child: Text('Predict and print to console'),
        ),
      ),
    ),
  ));
}

```

## Development & Contributing

This is a side project of mine, hence issues are usually dealt with on weekends.

PRs are more than welcome if anyone want to contribute. There are 

### Contribution Guidelines

1. General code quality will adhere to new PRs, although nothing too strict. Specifics will discussed in each PRs.
2. This is a multi-platform plugin, and each package is maintained independently. As part of it, each commit that changes the version is also tagged per platform. 
   The result is that changes that require multiple packages will require multiple commits - and hence multiple PRs.

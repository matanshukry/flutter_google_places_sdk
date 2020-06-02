# flutter_google_places_sdk

[![pub package](https://img.shields.io/pub/v/flutter_google_places_sdk.svg)](https://pub.dartlang.org/packages/flutter_google_places_sdk)

A Flutter plugin for google places sdk that uses the native libraries on each platform
 
Note: Currently only support Android

## Usage

To use this plugin, add `flutter_google_places_sdk` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

## Example

``` dart
import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
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
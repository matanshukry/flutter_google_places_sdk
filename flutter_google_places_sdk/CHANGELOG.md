## 0.3.6

* Exporting all types rather than just by name, allowing clients to also see the freezed classes
* Upgrading flutter_google_places_sdk_platform_interface to 0.2.6
* Upgrading flutter_google_places_sdk_web to 0.1.5
* Upgrading flutter_google_places_sdk_android to 0.1.7
* Upgrading flutter_google_places_sdk_windows to 0.1.3
* Upgrading flutter_google_places_sdk_linux to 0.1.3
* Upgrading flutter_google_places_sdk_macos to 0.1.3
* Upgrading sdk minimum to 2.17.0

## 0.3.5

* Updating android to 0.1.6

## 0.3.4

* Updated sdk minimum to 2.15.0
* Updating web to 0.1.4
* Updating android to 0.1.5
* Updating windows to 0.1.2
* Updating linux to 0.1.2
* Updating macos to 0.1.2

## 0.3.3

* Updated sdk minimum to 2.14.0
* Updating android to 0.1.3
* Updating windows to 0.1.1
* Updating linux to 0.1.1
* Updating macos to 0.1.1

## 0.3.2+9

* Updating ios to 0.1.2+4
  - Implements latLngBoundsToMap 
* Updating ios to 0.1.2+6
  - Updating kotlin version to 1.7.21

## 0.3.2+8

* Adding macos implementation.

## 0.3.2+7

* Adding linux implementation.

## 0.3.2+6

* Adding windows implementation.

## 0.3.2+5

* Sdk `updateSettings` method argument apiKey is now optional and will use the last apiKey if null.

## 0.3.2+4

* Updating platform interface to 0.2.4+3
* Updating ios to 0.1.2+3
* Updating web to 0.1.3+3
* Updating android to 0.1.2+5
* Example changes, including settings page for updateSettings method

## 0.3.2+3

* Upgrade iOS to 0.1.2+2
  *  Using locationBias and locationRestriction
* Upgrade Android to 0.1.2+4
  * Allowing android locale to pass null country (will use current locale country as default)

## 0.3.2+2

* Upgrade iOS to 0.1.2+1
  * Send viewport parameter
* Upgrade web to 0.1.3+1
  * Using locale input correctly now

## 0.3.2+1

* Upgrade android to 0.1.2+3
* Replacing jcenter dependency repository with mavenCentral

## 0.3.2

* Now supports fetchPlacePhoto with example

* Upgraded platform_interface to 0.2.4+1
* Upgraded android to 0.1.2+2
* Upgraded ios to 0.1.2
* Upgraded web to 0.1.3

## 0.3.1+1

* Upgraded android to 0.1.1+1
* Added limit info in README for web about location restriction

## 0.3.1

* Upgraded platform interface to 0.2.3
* Upgraded android to 0.1.1
* Upgraded ios to 0.1.1
* Upgraded web to 0.1.2
* Added location bias and restriction to example

## 0.3.0+1

* Added correct plugin information to pubspec.yaml

## 0.3.0

* Separated android and ios implementation to their own packages

## 0.2.4+1

* iOS implementation for typeFilter

## 0.2.4

* Upgrading platform interface to 0.2.2
* Upgrading web endorsement to 0.1.1+1

## 0.2.3

* Implemented iOS

## 0.2.2+1

* Added web dependency to complete endorsement

## 0.2.2

* Removed iOS indication since it was never implemented
* Added Web endorsement

## 0.2.1+1

* Upgraded flutter_google_places_sdk_platform_interface to 0.2.0+2
* Added Docs
* Running tests using Github Actions on push
* Added badge to README.md

## 0.2.1

* Upgraded Mockito to `5.0.11`
* Exported all types from `flutter_google_places_sdk_platform_interface`
* Changed the example import to use the new exported types without importing from `flutter_google_places_sdk_platform_interface`

## 0.2.0

* Upgraded dependencies versions. Now supporting null safety
* Added sessionToken and origin params to findAutoCompletePredictions
* Added fetchPlace with types.
* Updated example for new params and fetchPlace request

## 0.1.0+3

* Exposing Powered by google assets from platform interface

## 0.1.0+2

* Updated platform interface dependency to `0.1.0+1`
* Added PoweredByGoogle image to the example

## 0.1.0+1

* Changed to a more elaborated description in `pubspec.yaml`

## 0.1.0

* Initial Open Source release.

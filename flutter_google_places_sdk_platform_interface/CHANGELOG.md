## 0.3.1+1

* Add missing place types: `administrative_area_level_6`, `administrative_area_level_7`, `landmark`

## 0.3.1

* fix: Add missing argument `regionCode` to `fetchPlace` function

## 0.3.0

* feat: Added support for Google Places (new) which can be enabled through `initialize` function.
* feat: Added `searchByText` and `searchNearby` function for Places (new).
* feat: Added `nameLanguageCode` and `reviews` to Place object.

## 0.2.7

* Now receiving an already converted string list for typesFilter in `findAutocompletePredictions`
* Added an `apiExpectedValue` computed property to convert `PlaceTypeFilter` enum value to the expected string for the Google API
* Added `id` property to `Place` object.
* Upgraded `plugin_platform_interface` to `^2.1.6`

## 0.2.6

* Added any_map to all enums to freezed -> json_serializable
* Defined custom fromJson and toJson for all enums for case insensitive serialization & deserialization.
* Upgraded sdk minimum to 2.17.0 for enhanced enum support

## 0.2.5

* findAutocompletePredictions: now uses List<String> for typeFilter rather than just a single String.
* PlaceTypeFilter: Removed ALL enum. Since it's used as a list, passing an empty list is equivalent to all.
* Updated sdk minimum to 2.14.0

## 0.2.4+4

* Added types property to the Autocomplete predictions

## 0.2.4+3

* Introducing new method: `updateSettings`

## 0.2.4+2

* Changing `fields` property in `fetchPlace` method to required
* Updating `plugin_platform_interface` dependency version to 2.1.3

## 0.2.4+1

* fetchPlacePhoto response can also include url, to support web

## 0.2.4

* Added support for new method: fetchPlacePhoto

## 0.2.3

* Added support for location bias and location restriction

## 0.2.2

* Added support for placeTypeFilter in autoComplete request

## 0.2.1

* Adding PlaceType to the auto complete request filter

## 0.2.0+2

* Added Doc
* Running tests using Github Actions on push
* Added badge to README.md

## 0.2.0+1

* Fixed null cases with place object

## 0.2.0

* Upgraded dependencies versions. Now supporting null safety
* Added sessionToken and origin params to findAutoCompletePredictions
* Added fetchPlace with types

## 0.1.0+1

* Added 2 assets (powered by google white/non-white variations)
* Added test for the 2 assetse
* `LocaleUtils` was removed and function as inlined where it's used (it had a single use only)

## 0.1.0

* Initial Open Source release.

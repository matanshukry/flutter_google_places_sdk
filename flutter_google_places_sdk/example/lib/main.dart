// ignore_for_file: public_member_api_docs

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_example/constants.dart';
import 'package:flutter_google_places_sdk_example/google_places_img.dart'
    if (dart.library.html) 'package:flutter_google_places_sdk_example/google_places_img_web.dart' as gpi;
import 'package:flutter_google_places_sdk_example/settings_page.dart';

/// Title
const title = 'Flutter Google Places SDK Example';

enum ExecutionMode {
  autocomplete('Autocomplete'),
  textSearch('Text Search'),
  nearbySearch('Nearby Search');

  final String label;

  const ExecutionMode(this.label);
}

void main() {
  runApp(MyApp());
}

/// Main app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: MyHomePage(),
    );
  }
}

/// Main home page
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final FlutterGooglePlacesSdk _places;

  ExecutionMode _mode = ExecutionMode.autocomplete;

  String? _queryLastText;

  List<PlaceTypeFilter> _placeTypesFilter = [PlaceTypeFilter.ESTABLISHMENT];
  TextSearchRankPreference _textSearchRankPrefenceFilter = TextSearchRankPreference.Relevance;
  NearbySearchRankPreference _nearbySearchRankPrefenceFilter = NearbySearchRankPreference.Popularity;

  bool _locationBiasEnabled = true;
  LatLngBounds _locationBias = LatLngBounds(
      southwest: LatLng(lat: 32.0810305, lng: 34.785707), northeast: LatLng(lat: 32.0935937, lng: 34.8013896));

  bool _locationRestrictionEnabled = false;
  LatLngBounds _locationRestriction = LatLngBounds(
      southwest: LatLng(lat: 32.0583974, lng: 34.7633473), northeast: LatLng(lat: 32.0876885, lng: 34.8040563));
  CircularBounds _circularLocationRestriction =
      CircularBounds(center: LatLng(lat: 32.0583974, lng: 34.7633473), radius: 20);

  bool _countriesEnabled = true;
  List<String> _countries = ['il'];

  String? _regionCode;
  String? includedTypes;
  String? includedPrimaryTypes;
  String? excludedTypes;
  String? excludedPrimaryTypes;

  bool _querying = false;
  dynamic _queryErr;

  List<AutocompletePrediction>? _predictions;
  List<Place>? _textSearchPlaces;
  List<Place>? _nearbySearchPlaces;

  int? _maxResultCount;
  double? _minRating;

  final TextEditingController _fetchPlaceIdController = TextEditingController();
  List<PlaceField> _placeFields = PlaceField.values;

  bool _fetchingPlace = false;
  dynamic _fetchingPlaceErr;

  bool _fetchingPlacePhoto = false;
  dynamic _fetchingPlacePhotoErr;

  Place? _place;
  FetchPlacePhotoResponse? _placePhoto;
  PhotoMetadata? _placePhotoMetadata;

  @override
  void initState() {
    super.initState();

    _places = FlutterGooglePlacesSdk(INITIAL_API_KEY, locale: INITIAL_LOCALE, useNewApi: true);
    _places.isInitialized().then((value) {
      debugPrint('Places Initialized: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    final executionModeWidgets = _buildExecutionModeWidgets();
    var featureWidgets;
    switch (_mode) {
      case ExecutionMode.autocomplete:
        featureWidgets = _buildPredictionWidgets();
        break;
      case ExecutionMode.textSearch:
        featureWidgets = _buildTextSearchWidgets();
        break;
      case ExecutionMode.nearbySearch:
        featureWidgets = _buildNearbySearchWidgets();
        break;
    }
    final fetchPlaceWidgets = _buildFetchPlaceWidgets();
    final fetchPlacePhotoWidgets = _buildFetchPlacePhotoWidgets();
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        actions: [
          new IconButton(onPressed: _openSettingsModal, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          shrinkWrap: true,
          children: [
            executionModeWidgets,
            ...featureWidgets,
            SizedBox(height: 16),
            ...fetchPlaceWidgets,
            SizedBox(height: 16),
            ...fetchPlacePhotoWidgets,
          ],
        ),
      ),
    );
  }

  void _onPlaceTypeFilterChanged(PlaceTypeFilter? value) {
    if (value != null) {
      setState(() {
        _placeTypesFilter = [value];
      });
    }
  }

  String? _countriesValidator(String? input) {
    if (input == null || input.length == 0) {
      return null; // valid
    }

    return input
        .split(",")
        .map((part) => part.trim())
        .map((part) {
          if (part.length != 2) {
            return "Country part '${part}' must be 2 characters";
          }
          return null;
        })
        .where((item) => item != null)
        .firstOrNull;
  }

  void _onCountriesTextChanged(String countries) {
    _countries = (countries == "") ? [] : countries.split(",").map((item) => item.trim()).toList(growable: false);
  }

  void _onQueryTextChanged(String value) {
    _queryLastText = value;
  }

  void _fetchPlace() async {
    if (_fetchingPlace) {
      return;
    }

    final text = _fetchPlaceIdController.text;
    final hasContent = text.isNotEmpty;

    setState(() {
      _fetchingPlace = hasContent;
      _fetchingPlaceErr = null;
    });

    if (!hasContent) {
      return;
    }

    try {
      final result = await _places.fetchPlace(_fetchPlaceIdController.text, fields: _placeFields);

      setState(() {
        _place = result.place;
        _fetchingPlace = false;
      });
    } catch (err) {
      setState(() {
        _fetchingPlaceErr = err;
        _fetchingPlace = false;
      });
    }
  }

  void _textSearch() async {
    if (_querying) {
      return;
    }

    final hasContent = _queryLastText?.isNotEmpty ?? false;

    setState(() {
      _querying = hasContent;
      _queryErr = null;
    });

    if (!hasContent) {
      return;
    }

    try {
      final result = await _places.searchByText(
        _queryLastText!,
        fields: _placeFields,
        rankPreference: _textSearchRankPrefenceFilter,
        maxResultCount: _maxResultCount,
        minRating: _minRating,
        locationBias: _locationBiasEnabled ? _locationBias : null,
        locationRestriction: _locationRestrictionEnabled ? _locationRestriction : null,
        includedType: includedTypes,
      );

      setState(() {
        _textSearchPlaces = result.places;
        _querying = false;
      });
    } catch (err) {
      setState(() {
        _queryErr = err;
        _querying = false;
      });
    }
  }

  void _nearbySearch() async {
    if (_querying) {
      return;
    }

    setState(() {
      _querying = true;
      _queryErr = null;
    });

    try {
      final result = await _places.searchNearby(
        locationRestriction: _circularLocationRestriction,
        fields: _placeFields,
        rankPreference: _nearbySearchRankPrefenceFilter,
        maxResultCount: _maxResultCount,
        regionCode: _regionCode,
        includedTypes: includedTypes?.split(','),
        includedPrimaryTypes: includedPrimaryTypes?.split(','),
        excludedTypes: excludedTypes?.split(','),
        excludedPrimaryTypes: excludedPrimaryTypes?.split(','),
      );

      setState(() {
        _nearbySearchPlaces = result.places;
        _querying = false;
      });
    } catch (err) {
      setState(() {
        _queryErr = err;
        _querying = false;
      });
    }
  }

  void _predict() async {
    if (_querying) {
      return;
    }

    final hasContent = _queryLastText?.isNotEmpty ?? false;

    setState(() {
      _querying = hasContent;
      _queryErr = null;
    });

    if (!hasContent) {
      return;
    }

    try {
      final result = await _places.findAutocompletePredictions(
        _queryLastText!,
        countries: _countriesEnabled ? _countries : null,
        placeTypesFilter: _placeTypesFilter,
        newSessionToken: false,
        origin: LatLng(lat: 43.12, lng: 95.20),
        locationBias: _locationBiasEnabled ? _locationBias : null,
        locationRestriction: _locationRestrictionEnabled ? _locationRestriction : null,
      );

      setState(() {
        _predictions = result.predictions;
        _querying = false;
      });
    } catch (err) {
      setState(() {
        _queryErr = err;
        _querying = false;
      });
    }
  }

  void _onItemClicked(AutocompletePrediction item) {
    _fetchPlaceIdController.text = item.placeId;
  }

  Widget _buildPredictionItem(AutocompletePrediction item) {
    return InkWell(
      onTap: () => _onItemClicked(item),
      child: Column(children: [
        Text(item.fullText),
        Text(item.primaryText + ' - ' + item.secondaryText),
        const Divider(thickness: 2),
      ]),
    );
  }

  Widget _buildErrorWidget(dynamic err) {
    final theme = Theme.of(context);
    final errorText = err == null ? '' : err.toString();
    return Text(errorText, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.error));
  }

  List<Widget> _buildFetchPlacePhotoWidgets() {
    return [
      // --
      // TextFormField(controller: _fetchPlaceIdController),
      ElevatedButton(
        onPressed: (_fetchingPlacePhoto == true || _place == null) ? null : _fetchPlacePhoto,
        child: const Text('Fetch Place Photo'),
      ),

      // -- Error widget + Result
      _buildErrorWidget(_fetchingPlacePhotoErr),
      _buildPhotoWidget(_placePhoto),
    ];
  }

  void _fetchPlacePhoto() async {
    final place = _place;
    if (_fetchingPlacePhoto || place == null) {
      return;
    }

    if ((place.photoMetadatas?.length ?? 0) == 0) {
      setState(() {
        _fetchingPlacePhoto = false;
        _fetchingPlacePhotoErr = "No photos for place";
      });
      return;
    }

    setState(() {
      _fetchingPlacePhoto = true;
      _fetchingPlacePhotoErr = null;
    });

    try {
      final metadata = place.photoMetadatas![0];

      final result = await _places.fetchPlacePhoto(metadata);

      setState(() {
        _placePhoto = result;
        _placePhotoMetadata = metadata;
        _fetchingPlacePhoto = false;
      });
    } catch (err) {
      setState(() {
        _fetchingPlacePhotoErr = err;
        _fetchingPlacePhoto = false;
      });
    }
  }

  List<Widget> _buildFetchPlaceWidgets() {
    return [
      // --
      TextFormField(controller: _fetchPlaceIdController),
      ElevatedButton(
        onPressed: _fetchingPlace == true ? null : _fetchPlace,
        child: const Text('Fetch Place'),
      ),

      // -- Error widget + Result
      _buildErrorWidget(_fetchingPlaceErr),
      WebSelectableText('Result: ' + (_place?.toString() ?? 'N/A')),
    ];
  }

  Widget _buildEnabledOption(bool value, void Function(bool) callback, Widget child) {
    return Row(
      children: [
        Checkbox(
            value: value,
            onChanged: (value) {
              setState(() {
                callback(value ?? false);
              });
            }),
        Flexible(child: child),
      ],
    );
  }

  Widget _buildExecutionModeWidgets() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ExecutionMode.values.length,
        itemBuilder: (context, index) {
          final mode = ExecutionMode.values[index];
          return ChoiceChip(
            label: Text(mode.label),
            onSelected: (value) {
              if (value) {
                setState(() {
                  _mode = mode;
                });
              }
            },
            selected: _mode == mode,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 8);
        },
      ),
    );
  }

  List<Widget> _buildPredictionWidgets() {
    return [
      TextFormField(
        onChanged: _onQueryTextChanged,
        decoration: InputDecoration(label: Text("Query")),
      ),
      // -- Countries
      _buildEnabledOption(
        _countriesEnabled,
        (value) => _countriesEnabled = value,
        TextFormField(
          enabled: _countriesEnabled,
          onChanged: _onCountriesTextChanged,
          decoration: InputDecoration(label: Text("Countries")),
          validator: _countriesValidator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: _countries.join(","),
        ),
      ),
      // -- Place Types
      DropdownButton<PlaceTypeFilter>(
        items: PlaceTypeFilter.values
            .map((item) => DropdownMenuItem<PlaceTypeFilter>(child: Text(item.name), value: item))
            .toList(growable: false),
        value: _placeTypesFilter.isEmpty ? null : _placeTypesFilter[0],
        onChanged: _onPlaceTypeFilterChanged,
      ),
      // -- Location Bias
      _buildEnabledOption(
        _locationBiasEnabled,
        (value) => _locationBiasEnabled = value,
        LocationField(
          label: "Location Bias",
          enabled: _locationBiasEnabled,
          value: _locationBias,
          onChanged: (bounds) {
            setState(() {
              _locationBias = bounds;
            });
          },
        ),
      ),
      // -- Location Restrictions
      _buildEnabledOption(
        _locationRestrictionEnabled,
        (value) => _locationRestrictionEnabled = value,
        LocationField(
          label: "Location Restriction",
          enabled: _locationRestrictionEnabled,
          value: _locationRestriction,
          onChanged: (bounds) {
            setState(() {
              _locationRestriction = bounds;
            });
          },
        ),
      ),
      // -- Predict
      ElevatedButton(
        onPressed: _querying == true ? null : _predict,
        child: const Text('Predict'),
      ),

      // -- Error widget + Result
      _buildErrorWidget(_queryErr),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: (_predictions ?? []).map(_buildPredictionItem).toList(growable: false),
      ),
      Image(
        image: FlutterGooglePlacesSdk.ASSET_POWERED_BY_GOOGLE_ON_WHITE,
      ),
    ];
  }

  List<Widget> _buildTextSearchWidgets() {
    return [
      TextFormField(
        onChanged: _onQueryTextChanged,
        decoration: InputDecoration(label: Text("Query")),
      ),
      // -- Place Types
      DropdownButton<TextSearchRankPreference>(
        items: TextSearchRankPreference.values
            .map((item) => DropdownMenuItem<TextSearchRankPreference>(child: Text(item.value), value: item))
            .toList(growable: false),
        value: _textSearchRankPrefenceFilter,
        onChanged: (value) => setState(() => _textSearchRankPrefenceFilter = value!),
      ),
      TextFormField(
        onChanged: (value) => _maxResultCount = int.tryParse(value),
        decoration: InputDecoration(label: Text("Max Result Count")),
        keyboardType: TextInputType.number,
      ),
      TextFormField(
        onChanged: (value) => _minRating = double.tryParse(value),
        decoration: InputDecoration(label: Text("Minimum Rating")),
        keyboardType: TextInputType.number,
      ),
      // -- Location Bias
      _buildEnabledOption(
        _locationBiasEnabled,
        (value) => _locationBiasEnabled = value,
        LocationField(
          label: "Location Bias",
          enabled: _locationBiasEnabled,
          value: _locationBias,
          onChanged: (bounds) {
            setState(() {
              _locationBias = bounds;
            });
          },
        ),
      ),
      // -- Location Restrictions
      _buildEnabledOption(
        _locationRestrictionEnabled,
        (value) => _locationRestrictionEnabled = value,
        LocationField(
          label: "Location Restriction",
          enabled: _locationRestrictionEnabled,
          value: _locationRestriction,
          onChanged: (bounds) {
            setState(() {
              _locationRestriction = bounds;
            });
          },
        ),
      ),
      // -- TextSearch
      ElevatedButton(
        onPressed: _querying == true ? null : _textSearch,
        child: const Text('Search'),
      ),
      // -- Error widget + Result
      _buildErrorWidget(_queryErr),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: (_textSearchPlaces ?? []).map((item) => WebSelectableText(item.toString())).toList(growable: false),
      ),
      Image(
        image: FlutterGooglePlacesSdk.ASSET_POWERED_BY_GOOGLE_ON_WHITE,
      ),
    ];
  }

  List<Widget> _buildNearbySearchWidgets() {
    return [
      // -- Location Restrictions
      CircularLocationField(
        label: "Location Restriction",
        value: _circularLocationRestriction,
        onChanged: (bounds) {
          setState(() {
            _circularLocationRestriction = bounds;
          });
        },
      ),
      DropdownButton<NearbySearchRankPreference>(
        items: NearbySearchRankPreference.values
            .map((item) => DropdownMenuItem<NearbySearchRankPreference>(child: Text(item.value), value: item))
            .toList(growable: false),
        value: _nearbySearchRankPrefenceFilter,
        onChanged: (value) => setState(() => _nearbySearchRankPrefenceFilter = value!),
      ),
      TextFormField(
        onChanged: (value) => _maxResultCount = int.tryParse(value),
        decoration: InputDecoration(label: Text("Max Result Count")),
        keyboardType: TextInputType.number,
      ),
      TextFormField(
        onChanged: (value) => _regionCode = value,
        decoration: InputDecoration(label: Text("Region Code")),
      ),
      TextFormField(
        onChanged: (value) => includedTypes = value,
        decoration: InputDecoration(label: Text("Included Types (comma separated)")),
      ),
      TextFormField(
        onChanged: (value) => includedPrimaryTypes = value,
        decoration: InputDecoration(label: Text("Included Primary Types (comma separated)")),
      ),
      TextFormField(
        onChanged: (value) => excludedTypes = value,
        decoration: InputDecoration(label: Text("Excluded Types (comma separated)")),
      ),
      TextFormField(
        onChanged: (value) => excludedPrimaryTypes = value,
        decoration: InputDecoration(label: Text("Excluded Primary Types (comma separated)")),
      ),
      // -- TextSearch
      ElevatedButton(
        onPressed: _querying == true ? null : _nearbySearch,
        child: const Text('Search'),
      ),
      // -- Error widget + Result
      _buildErrorWidget(_queryErr),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: (_nearbySearchPlaces ?? []).map((item) => WebSelectableText(item.toString())).toList(growable: false),
      ),
      Image(
        image: FlutterGooglePlacesSdk.ASSET_POWERED_BY_GOOGLE_ON_WHITE,
      ),
    ];
  }

  Widget _buildPhotoWidget(FetchPlacePhotoResponse? placePhoto) {
    if (placePhoto == null) {
      return Container();
    }

    return gpi.GooglePlacesImg(photoMetadata: _placePhotoMetadata!, placePhotoResponse: placePhoto);
  }

  void _openSettingsModal() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage(_places)));
  }
}

/// Callback function with LatLngBounds
typedef void ActionWithBounds(LatLngBounds);

/// Location widget used to display and edit a LatLngBounds type
class LocationField extends StatefulWidget {
  /// Label associated with this field
  final String label;

  /// If true the field is enabled. If false it is disabled and user can not interact with it
  /// Value is retained even when the field is disabled
  final bool enabled;

  /// The current value in the field
  final LatLngBounds value;

  /// Callback for when the value has changed by the user.
  final ActionWithBounds onChanged;

  /// Create a LocationField
  const LocationField({
    Key? key,
    required this.label,
    required this.enabled,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LocationFieldState();
}

class _LocationFieldState extends State<LocationField> {
  late TextEditingController _ctrlNeLat;
  late TextEditingController _ctrlNeLng;
  late TextEditingController _ctrlSwLat;
  late TextEditingController _ctrlSwLng;

  @override
  void initState() {
    super.initState();

    _ctrlNeLat = TextEditingController.fromValue(TextEditingValue(text: widget.value.northeast.lat.toString()));
    _ctrlNeLng = TextEditingController.fromValue(TextEditingValue(text: widget.value.northeast.lng.toString()));
    _ctrlSwLat = TextEditingController.fromValue(TextEditingValue(text: widget.value.southwest.lat.toString()));
    _ctrlSwLng = TextEditingController.fromValue(TextEditingValue(text: widget.value.southwest.lng.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InputDecorator(
        decoration: InputDecoration(
          enabled: widget.enabled,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Row(children: [
          _buildField("NE/Lat", _ctrlNeLat),
          _buildField("NE/Lng", _ctrlNeLng),
          _buildField("SW/Lat", _ctrlSwLat),
          _buildField("SW/Lng", _ctrlSwLng),
        ]),
      ),
    );
  }

  Widget _buildField(String label, TextEditingController controller) {
    return Flexible(
      child: TextFormField(
        enabled: widget.enabled,
        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
        ],
        onChanged: (value) => _onValueChanged(controller, value),
        decoration: InputDecoration(label: Text(label)),
        // validator: _boundsValidator,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
      ),
    );
  }

  void _onValueChanged(TextEditingController ctrlNELat, String value) {
    final neLat = double.parse(ctrlNELat.value.text);

    LatLngBounds bounds = LatLngBounds(southwest: LatLng(lat: 0.0, lng: 0.0), northeast: LatLng(lat: neLat, lng: 0.0));

    widget.onChanged(bounds);
  }
}

/// Location widget used to display and edit a CircularBounds type
class CircularLocationField extends StatefulWidget {
  /// Label associated with this field
  final String label;

  /// The current value in the field
  final CircularBounds value;

  /// Callback for when the value has changed by the user.
  final void Function(CircularBounds bounds) onChanged;

  /// Create a [CircularLocationField]
  const CircularLocationField({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CircularLocationField();
}

class _CircularLocationField extends State<CircularLocationField> {
  late TextEditingController _ctrlLat;
  late TextEditingController _ctrlLng;
  late TextEditingController _ctrlRadius;

  @override
  void initState() {
    super.initState();

    _ctrlLat = TextEditingController.fromValue(TextEditingValue(text: widget.value.center.lat.toString()));
    _ctrlLng = TextEditingController.fromValue(TextEditingValue(text: widget.value.center.lng.toString()));
    _ctrlRadius = TextEditingController.fromValue(TextEditingValue(text: widget.value.radius.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Row(children: [
          _buildField("Lat", _ctrlLat),
          _buildField("Lng", _ctrlLng),
          _buildField("Radius", _ctrlLng),
        ]),
      ),
    );
  }

  Widget _buildField(String label, TextEditingController controller) {
    return Flexible(
      child: TextFormField(
        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
        ],
        onChanged: (value) {
          widget.onChanged(
            CircularBounds(
              center: LatLng(
                lat: double.parse(_ctrlLat.text),
                lng: double.parse(_ctrlLng.text),
              ),
              radius: double.parse(_ctrlRadius.text),
            ),
          );
        },
        decoration: InputDecoration(label: Text(label)),
        // validator: _boundsValidator,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
      ),
    );
  }
}

/// Creates a web-selectable text widget.
///
/// If the platform is web, the widget created is [SelectableText].
/// Otherwise, it's a [Text].
class WebSelectableText extends StatelessWidget {
  /// The text to display.
  ///
  /// This will be null if a [textSpan] is provided instead.
  final String data;

  /// Creates a web-selectable text widget.
  ///
  /// If the platform is web, the widget created is [SelectableText].
  /// Otherwise, it's a [Text].
  const WebSelectableText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SelectableText(data);
    }
    return Text(data);
  }
}

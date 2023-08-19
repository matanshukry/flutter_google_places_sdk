import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_example/constants.dart';
import 'package:flutter_google_places_sdk_example/google_places_img.dart'
    if (dart.library.html) 'package:flutter_google_places_sdk_example/google_places_img_web.dart'
    as gpi;
import 'package:flutter_google_places_sdk_example/settings_page.dart';

/// Title
const title = 'Flutter Google Places SDK Example';

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

  //
  String? _predictLastText;

  List<PlaceTypeFilter> _placeTypesFilter = [PlaceTypeFilter.ESTABLISHMENT];

  bool _locationBiasEnabled = true;
  LatLngBounds _locationBias = LatLngBounds(
      southwest: LatLng(lat: 32.0810305, lng: 34.785707),
      northeast: LatLng(lat: 32.0935937, lng: 34.8013896));

  bool _locationRestrictionEnabled = false;
  LatLngBounds _locationRestriction = LatLngBounds(
      southwest: LatLng(lat: 32.0583974, lng: 34.7633473),
      northeast: LatLng(lat: 32.0876885, lng: 34.8040563));

  List<String> _countries = ['il'];
  bool _countriesEnabled = true;

  bool _predicting = false;
  dynamic _predictErr;

  List<AutocompletePrediction>? _predictions;

  //
  final TextEditingController _fetchPlaceIdController = TextEditingController();
  List<PlaceField> _placeFields = [
    PlaceField.Address,
    PlaceField.AddressComponents,
    PlaceField.BusinessStatus,
    PlaceField.Id,
    PlaceField.Location,
    PlaceField.Name,
    PlaceField.OpeningHours,
    PlaceField.PhoneNumber,
    PlaceField.PhotoMetadatas,
    PlaceField.PlusCode,
    PlaceField.PriceLevel,
    PlaceField.Rating,
    PlaceField.Types,
    PlaceField.UserRatingsTotal,
    PlaceField.UTCOffset,
    PlaceField.Viewport,
    PlaceField.WebsiteUri,
  ];

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

    _places = FlutterGooglePlacesSdk(INITIAL_API_KEY, locale: INITIAL_LOCALE);
    _places.isInitialized().then((value) {
      debugPrint('Places Initialized: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    final predictionsWidgets = _buildPredictionWidgets();
    final fetchPlaceWidgets = _buildFetchPlaceWidgets();
    final fetchPlacePhotoWidgets = _buildFetchPlacePhotoWidgets();
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        actions: [
          new IconButton(
              onPressed: _openSettingsModal, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: predictionsWidgets +
              [
                SizedBox(height: 16),
              ] +
              fetchPlaceWidgets +
              [
                SizedBox(height: 16),
              ] +
              fetchPlacePhotoWidgets,
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
    _countries = (countries == "")
        ? []
        : countries
            .split(",")
            .map((item) => item.trim())
            .toList(growable: false);
  }

  void _onPredictTextChanged(String value) {
    _predictLastText = value;
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
      final result = await _places.fetchPlace(_fetchPlaceIdController.text,
          fields: _placeFields);

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

  void _predict() async {
    if (_predicting) {
      return;
    }

    final hasContent = _predictLastText?.isNotEmpty ?? false;

    setState(() {
      _predicting = hasContent;
      _predictErr = null;
    });

    if (!hasContent) {
      return;
    }

    try {
      final result = await _places.findAutocompletePredictions(
        _predictLastText!,
        countries: _countriesEnabled ? _countries : null,
        placeTypesFilter: _placeTypesFilter,
        newSessionToken: false,
        origin: LatLng(lat: 43.12, lng: 95.20),
        locationBias: _locationBiasEnabled ? _locationBias : null,
        locationRestriction:
            _locationRestrictionEnabled ? _locationRestriction : null,
      );

      setState(() {
        _predictions = result.predictions;
        _predicting = false;
      });
    } catch (err) {
      setState(() {
        _predictErr = err;
        _predicting = false;
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
    return Text(errorText,
        style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.error));
  }

  List<Widget> _buildFetchPlacePhotoWidgets() {
    return [
      // --
      // TextFormField(controller: _fetchPlaceIdController),
      ElevatedButton(
        onPressed: (_fetchingPlacePhoto == true || _place == null)
            ? null
            : _fetchPlacePhoto,
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

  Widget _buildEnabledOption(
      bool value, void Function(bool) callback, Widget child) {
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

  List<Widget> _buildPredictionWidgets() {
    return [
      // --
      TextFormField(
        onChanged: _onPredictTextChanged,
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
            .map((item) => DropdownMenuItem<PlaceTypeFilter>(
                child: Text(item.value), value: item))
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
        onPressed: _predicting == true ? null : _predict,
        child: const Text('Predict'),
      ),

      // -- Error widget + Result
      _buildErrorWidget(_predictErr),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: (_predictions ?? [])
            .map(_buildPredictionItem)
            .toList(growable: false),
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

    return gpi.GooglePlacesImg(
        photoMetadata: _placePhotoMetadata!, placePhotoResponse: placePhoto);
  }

  void _openSettingsModal() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsPage(_places)));
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
  const LocationField(
      {Key? key,
      required this.label,
      required this.enabled,
      required this.value,
      required this.onChanged})
      : super(key: key);

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

    _ctrlNeLat = TextEditingController.fromValue(
        TextEditingValue(text: widget.value.northeast.lat.toString()));
    _ctrlNeLng = TextEditingController.fromValue(
        TextEditingValue(text: widget.value.northeast.lng.toString()));
    _ctrlSwLat = TextEditingController.fromValue(
        TextEditingValue(text: widget.value.southwest.lat.toString()));
    _ctrlSwLng = TextEditingController.fromValue(
        TextEditingValue(text: widget.value.southwest.lng.toString()));
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
        keyboardType:
            TextInputType.numberWithOptions(signed: true, decimal: true),
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

    LatLngBounds bounds = LatLngBounds(
        southwest: LatLng(lat: 0.0, lng: 0.0),
        northeast: LatLng(lat: neLat, lng: 0.0));

    widget.onChanged(bounds);
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

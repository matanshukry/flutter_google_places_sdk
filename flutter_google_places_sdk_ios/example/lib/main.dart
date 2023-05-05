import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/types.dart';

/// Title
const title = 'Flutter Google Places Android SDK Example';

/// note: do NOT store your api key in here or in the code at all.
/// use an external source such as file or firebase remote config
const API_KEY = '';

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
  late final FlutterGooglePlacesSdkPlatform _places;

  //
  String? _predictLastText;
  List<String> _countries = ['il'];
  PlaceTypeFilter _placeTypeFilter = PlaceTypeFilter.ESTABLISHMENT;

  LatLngBounds _locationBias = LatLngBounds(
    southwest: LatLng(lat: 32.0810305, lng: 34.785707),
    northeast: LatLng(lat: 32.0935937, lng: 34.8013896),
  );

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

  bool _fetching = false;
  dynamic _fetchingErr;

  late Future<void> _loading;

  Place? _place;

  @override
  void initState() {
    super.initState();

    _places = FlutterGooglePlacesSdkPlatform.instance;
    _loading = _places.initialize(API_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: FutureBuilder(
          future: _loading,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error?.toString() ?? "N/A"));
              }

              return _buildBody();
            }

            return Center(child: CircularProgressIndicator());
          },
        ));
  }

  Widget _buildBody() {
    final predictionsWidgets = _buildPredictionWidgets();
    final fetchPlaceWidgets = _buildFetchPlaceWidgets();

    return Padding(
      padding: EdgeInsets.all(30),
      child: ListView(
          children: predictionsWidgets +
              [
                SizedBox(height: 16),
              ] +
              fetchPlaceWidgets),
    );
  }

  void _onPlaceTypeFilterChanged(PlaceTypeFilter? value) {
    if (value != null) {
      setState(() {
        _placeTypeFilter = value;
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

  void _fetch() async {
    if (_fetching) {
      return;
    }

    final text = _fetchPlaceIdController.text;
    final hasContent = text.isNotEmpty;

    setState(() {
      _fetching = hasContent;
      _fetchingErr = null;
    });

    if (!hasContent) {
      return;
    }

    try {
      final result = await _places.fetchPlace(_fetchPlaceIdController.text,
          fields: _placeFields);

      setState(() {
        _place = result.place;
        _fetching = false;
      });
    } catch (err) {
      setState(() {
        _fetchingErr = err;
        _fetching = false;
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
        countries: _countries,
        placeTypeFilter: _placeTypeFilter,
        newSessionToken: false,
        origin: LatLng(lat: 43.12, lng: 95.20),
        locationBias: _locationBias,
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

  List<Widget> _buildFetchPlaceWidgets() {
    return [
      // --
      TextFormField(controller: _fetchPlaceIdController),
      ElevatedButton(
        onPressed: _fetching == true ? null : _fetch,
        child: const Text('Fetch Place'),
      ),

      // -- Error widget + Result
      _buildErrorWidget(_fetchingErr),
      Text('Result: ' + (_place?.toString() ?? 'N/A')),
    ];
  }

  List<Widget> _buildPredictionWidgets() {
    return [
      // --
      TextFormField(
        onChanged: _onPredictTextChanged,
        decoration: InputDecoration(label: Text("Query")),
      ),
      // _countries
      TextFormField(
        onChanged: _onCountriesTextChanged,
        decoration: InputDecoration(label: Text("Countries")),
        validator: _countriesValidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: _countries.join(","),
      ),
      DropdownButton<PlaceTypeFilter>(
        items: PlaceTypeFilter.values
            .map((item) => DropdownMenuItem<PlaceTypeFilter>(
                child: Text(item.value), value: item))
            .toList(growable: false),
        value: _placeTypeFilter,
        onChanged: _onPlaceTypeFilterChanged,
      ),
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
        image: FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_WHITE,
      ),
    ];
  }
}

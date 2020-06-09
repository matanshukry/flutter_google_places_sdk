import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

const title = 'Flutter Google Places SDK Example';

// note: do NOT store your api key in here or in the code at all.
// use an external source such as file or firebase remote config
const API_KEY = 'my-key';

void main() {
  runApp(MyApp());
}

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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _lasText;

  FlutterGooglePlacesSdk _places;

  bool _looking = false;
  dynamic _err;

  List<AutocompletePrediction> _predictions;

  @override
  void initState() {
    super.initState();

    _places = FlutterGooglePlacesSdk(API_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(children: [
          TextFormField(
            onChanged: _onTextChanged,
          ),
          RaisedButton(
            onPressed: _looking == true ? null : _predict,
            child: const Text('Predict'),
          ),
          Image(image: FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_WHITE),
          _buildErrorWidget(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: (_predictions ?? [])
                .map(_buildPredictionItem)
                .toList(growable: false),
          )
        ]),
      ),
    );
  }

  void _onTextChanged(String value) {
    _lasText = value;
  }

  void _predict() async {
    if (_looking) {
      return;
    }

    setState(() {
      _looking = true;
      _err = null;
    });

    try {
      final result = await _places
          .findAutocompletePredictions(_lasText, countries: ['il']);

      setState(() {
        _predictions = result.predictions;
        _looking = false;
      });
    } catch (err) {
      setState(() {
        _err = err;
        _looking = false;
      });
    }
  }

  Widget _buildPredictionItem(AutocompletePrediction item) {
    return Column(children: [
      Text(item.fullText),
      Text(item.primaryText + ' - ' + item.secondaryText),
      const Divider(thickness: 2),
    ]);
  }

  Widget _buildErrorWidget() {
    final theme = Theme.of(context);
    final errorText = _err == null ? '' : _err.toString();
    return Text(errorText,
        style: theme.textTheme.caption.copyWith(color: theme.errorColor));
  }
}

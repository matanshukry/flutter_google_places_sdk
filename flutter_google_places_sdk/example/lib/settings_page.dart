import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_example/constants.dart';

/// Settings page of an example
class SettingsPage extends StatefulWidget {
  /// Places client that can be used to update the settings
  final FlutterGooglePlacesSdk places;

  /// Create a settings page
  const SettingsPage(this.places);

  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _controllerApiKey = TextEditingController();

  var _lastKey = INITIAL_API_KEY;
  get _selectedKey => _controllerApiKey.text;

  Locale? _lastLocale;
  Locale? _selectedLocale;

  var _anyChanges = false;
  var _updating = false;

  @override
  void initState() {
    super.initState();

    _controllerApiKey.text = _lastKey = widget.places.apiKey;
    _controllerApiKey.addListener(_checkChanges);

    _lastLocale = _selectedLocale = widget.places.locale;
  }

  void _checkChanges() {
    setState(() {
      _anyChanges =
          (_lastKey != _selectedKey) || (_lastLocale != _selectedLocale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text("API Key"),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
            controller: _controllerApiKey,
          ),
          SizedBox(height: 30),
          _LocaleFormField(
            value: _lastLocale,
            onChanged: (locale) {
              _selectedLocale = locale;
              _checkChanges();
            },
          ),

          // -- Button
          ElevatedButton(
            onPressed: (!_anyChanges || _updating) ? null : _applyChanges,
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }

  void _applyChanges() async {
    setState(() {
      _updating = true;
    });
    await widget.places.updateSettings(apiKey: _selectedKey, locale: _selectedLocale);
    setState(() {
      _lastLocale = _selectedLocale;
      _lastKey = _selectedKey;
    });
    _checkChanges();
  }
}

class _LocaleFormField extends StatefulWidget {
  final Locale? value;
  final void Function(Locale) onChanged;

  const _LocaleFormField({Key? key, this.value, required this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _LocaleFormFieldState();
}

class _LocaleFormFieldState extends State<_LocaleFormField> {
  final _languageController = TextEditingController();
  final _countryController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _languageController.text = widget.value?.languageCode ?? '';
    _languageController.addListener(_onChange);

    _countryController.text = widget.value?.countryCode ?? '';
    _countryController.addListener(_onChange);
  }

  void _onChange() {
    final country =
        _countryController.text.isEmpty ? null : _countryController.text;
    final locale = Locale(_languageController.text, country);
    widget.onChanged(locale);
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        label: Text("Locale"),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Row(children: [
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(label: Text("Language")),
          controller: _languageController,
        )),
        SizedBox(width: 15),
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(label: Text("Country")),
          controller: _countryController,
        )),
      ]),
    );
  }
}

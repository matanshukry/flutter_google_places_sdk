library constants;

import 'package:flutter/material.dart';

/// Define your api in run args, such as
/// --dart-define API_KEY="<api_key>"
const INITIAL_API_KEY = String.fromEnvironment('API_KEY');

/// Initial value that is used for the locale
const INITIAL_LOCALE = Locale('en');
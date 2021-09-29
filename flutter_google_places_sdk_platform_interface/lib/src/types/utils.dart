/// Creates a map from the value, if not null.
/// If value is null, the return value is null.
Map<String, dynamic>? toJsonMap(dynamic value) {
  if (value == null) {
    return null;
  }

  return Map<String, dynamic>.from(value);
}

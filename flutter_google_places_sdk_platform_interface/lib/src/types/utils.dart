Map<String, dynamic>? toJsonMap(dynamic value) {
  if (value == null) {
    return null;
  }

  return Map<String, dynamic>.from(value);
}

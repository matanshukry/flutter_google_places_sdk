class Location {
  const Location({
    this.lat,
    this.lng
  });

  final double lat, lng;

@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Location &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode =>
      lat.hashCode ^
      lng.hashCode;

  @override
  String toString() {
    return 'Location{lat: $lat, lng: $lng';
  }

  Map<String, dynamic> toMap() => {
        'lat': lat,
        'lng': lng,
      };

  static Location fromMap(Map<String, dynamic> map) =>
      Location(
        lat: map['lat'],
        lng: map['lng'],
      );
}

/// The business status of a place
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/Place.BusinessStatus
enum BusinessStatus {
  Operational,
  ClosedTemporarily,
  ClosedPermanently,
}

extension BusinessStatusDescriptor on BusinessStatus {
  String get value {
    switch (this) {
      case BusinessStatus.Operational:
        return 'OPERATIONAL';
      case BusinessStatus.ClosedTemporarily:
        return 'CLOSED_TEMPORARILY';
      case BusinessStatus.ClosedPermanently:
        return 'CLOSED_PERMANENTLY';
      default:
        throw ArgumentError('Unsupported business status: $this');
    }
  }
}

extension BusinessStatusEnumParser on String {
  BusinessStatus? toBusinessStatus() {
    switch (toUpperCase()) {
      case 'OPERATIONAL':
        return BusinessStatus.Operational;
      case 'CLOSED_TEMPORARILY':
        return BusinessStatus.ClosedTemporarily;
      case 'CLOSED_PERMANENTLY':
        return BusinessStatus.ClosedPermanently;
      case 'NULL':
        return null;
      default:
        throw ArgumentError('Unsupported business status: $this');
    }
  }
}

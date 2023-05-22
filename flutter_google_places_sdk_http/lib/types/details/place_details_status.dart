/// Status code returned google maps api.
enum PlaceDetailsStatus {
  /// The API request was successful.
  OK,

  /// the referenced location, place_id, was valid but no longer refers to a valid result. 
  /// This may occur if the establishment is no longer in business.
  ZERO_RESULTS,

  /// The referenced location, place_id, was not found in the Places database.
  NOT_FOUND,

  /// The API request was malformed, generally due to the missing input parameter.
  INVALID_REQUEST,

  /// Possible due to any of the following:
  /// * You have exceeded the QPS limits.
  /// * Billing has not been enabled on your account.
  /// * The monthly $200 credit, or a self-imposed usage cap, has been exceeded.
  /// * The provided method of payment is no longer valid (for example, a credit card has expired).
  ///
  /// See the [Maps FAQ](https://developers.google.com/maps/faq#over-limit-key-error)
  /// for more information about how to resolve this error.
  OVER_QUERY_LIMIT,

  /// The request was denied, generally because:
  /// * The request is missing an API key.
  /// * The key parameter is invalid.
  REQUEST_DENIED,

  /// An unknown error.
  UNKNOWN_ERROR,
}

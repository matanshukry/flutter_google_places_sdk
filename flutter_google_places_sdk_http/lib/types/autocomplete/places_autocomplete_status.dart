/// Status code returned google maps api.
enum PlacesAutocompleteStatus {
  /// The API request was successful.
  OK,

  /// The search was successful but returned no results.
  /// This may occur if the search was passed a bounds in a remote location.
  ZERO_RESULTS,

  /// The API request was malformed, generally due to the
  /// missing input parameter.
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

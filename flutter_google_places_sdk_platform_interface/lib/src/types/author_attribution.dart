
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_attribution.freezed.dart';
part 'author_attribution.g.dart';

@freezed
class AuthorAttribution with _$AuthorAttribution {
  /// Constructs a [AuthorAttribution] object.
  const factory AuthorAttribution({
    /// The name of the author.
    required String name,

    /// The profile photo URI of the author.
    required String photoUri,

    /// The URI of the author.
    required String uri,
  }) = _AuthorAttribution;

  /// Parse an [AuthorAttribution] from json.
  factory AuthorAttribution.fromJson(Map<String, Object?> json) =>
      _$AuthorAttributionFromJson(json);
}

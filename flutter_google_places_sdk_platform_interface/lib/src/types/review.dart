import 'package:flutter_google_places_sdk_platform_interface/src/types/author_attribution.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  /// Constructs a [Review] object.
  const factory Review({
    /// The attribution that must be shown to the user if this review is displayed.
    required String attribution,

    /// This review's AuthorAttribution.
    required AuthorAttribution authorAttribution,

    /// The text of the review in its original language.
    String? originalText,

    /// The language code of the original text of the review.
    String? originalTextLanguageCode,

    /// A whole number between 1.0 and 5.0 (inclusive), meaning the number of stars.
    required double rating,

    /// The publish time for the review, expressed in "yyyy-MM-dd HH:mm:ss" format of UTC timezone.
    required String publishTime,

    /// A human-readable description of the relative publish time of a review, such as "a month ago", or "in the last week", based on the time elapsed.
    required String relativePublishTimeDescription,

    /// The text of the review.
    String? text,

    /// The language code of the text of the review.
    String? textLanguageCode,
  }) = _Review;

  /// Parse a [Review] from json.
  factory Review.fromJson(Map<String, Object?> json) => _$ReviewFromJson(json);
}

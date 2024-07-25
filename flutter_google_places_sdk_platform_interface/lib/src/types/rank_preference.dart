import 'package:json_annotation/json_annotation.dart';

part 'rank_preference.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake, alwaysCreate: true)
enum TextSearchRankPreference {
  Distance,
  Relevance;

  factory TextSearchRankPreference.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}

extension TextSearchRankPreferenceValue on TextSearchRankPreference {
  String get value => _$TextSearchRankPreferenceEnumMap[this]!;
}

@JsonEnum(fieldRename: FieldRename.screamingSnake, alwaysCreate: true)
enum NearbySearchRankPreference {
  Distance,
  Popularity;

  factory NearbySearchRankPreference.fromJson(String name) {
    name = name.toLowerCase();
    for (final value in values) {
      if (value.name.toLowerCase() == name) {
        return value;
      }
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}

extension NearbySearchRankPreferenceValue on NearbySearchRankPreference {
  String get value => _$NearbySearchRankPreferenceEnumMap[this]!;
}

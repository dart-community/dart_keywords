import 'package:language_version/language_version.dart';
import 'package:meta/meta.dart';

import 'all_keywords.dart';
import 'keyword.dart';

/// Provides access to details about Dart keywords supported at
/// a specific Dart [language version][].
///
/// To create an instance for a specific language version,
/// use [DartKeywords.forVersion].
/// To create an instance for the latest language version supported
/// by this package, use [DartKeywords.forLatest].
///
/// Example usage:
///
/// ```dart
/// final keywords = DartKeywords.forVersion(LanguageVersion(3, 0));
/// if (keywords.hasKeyword('sealed')) {
///   print('`sealed` is a supported keyword in Dart 3.0.');
/// }
/// ```
///
/// [language version]: https://dart.dev/to/language-version
final class DartKeywords {
  /// The latest Dart language version supported by [DartKeywords.forVersion].
  static const LanguageVersion latestSupportedLanguageVersion = LanguageVersion(
    3,
    10,
  );

  /// The earliest Dart language version supported by [DartKeywords.forVersion].
  static const LanguageVersion earliestSupportedLanguageVersion =
      LanguageVersion(1, 0);

  /// The Dart language version for which this instance
  /// provides information about keywords for.
  final LanguageVersion languageVersion;

  /// Map of normalized keyword names to a corresponding [DartKeyword] instance.
  ///
  /// Keywords are normalized by trimming surrounding whitespace and
  /// converting them to lowercase.
  final Map<String, DartKeyword> _keywords;

  /// Creates a [DartKeywords] instance for
  /// the latest supported Dart language version,
  /// as indicated by [latestSupportedLanguageVersion].
  ///
  /// For more details on the construction of [DartKeywords],
  /// reference the [DartKeywords.forVersion] constructor.
  factory DartKeywords.forLatest() =>
      DartKeywords.forVersion(latestSupportedLanguageVersion);

  /// Creates a [DartKeywords] instance for
  /// the specified Dart [languageVersion].
  ///
  /// The created [DartKeywords] instance provides details
  /// for the keywords supported by the specified [languageVersion]
  /// and according to there status as of that version.
  ///
  /// Throws an [ArgumentError] if [languageVersion] is outside the
  /// supported range of language versions, as delimited by
  /// [earliestSupportedLanguageVersion] and [latestSupportedLanguageVersion].
  ///
  /// For example, if you wanted to learn about the keywords
  /// specifically supported by Dart in language version 3.0:
  ///
  /// ```dart
  ///
  /// final dart3Keywords = DartKeywords.forVersion(LanguageVersion(3, 0));
  /// ```
  factory DartKeywords.forVersion(LanguageVersion languageVersion) {
    if (languageVersion < earliestSupportedLanguageVersion) {
      throw ArgumentError.value(
        languageVersion,
        'languageVersion',
        'Language version must be at least $earliestSupportedLanguageVersion.',
      );
    }
    if (languageVersion > latestSupportedLanguageVersion) {
      throw ArgumentError.value(
        languageVersion,
        'languageVersion',
        'Language version must not exceed $latestSupportedLanguageVersion.',
      );
    }
    final filteredKeywords = <String, DartKeyword>{
      for (final keyword in internalKeywords)
        if (keyword.introducedVersion <= languageVersion &&
            keyword.removedOrReplacedVersion == null)
          keyword.name.trim().toLowerCase(): keyword,
    };

    return DartKeywords._(languageVersion, filteredKeywords);
  }

  /// Creates a [DartKeywords] instance that provides information
  /// about the specified [_keywords] for the given [languageVersion].
  const DartKeywords._(this.languageVersion, this._keywords);

  /// An unmodifiable list of all keywords currently supported
  /// by Dart code with this [languageVersion].
  @useResult
  List<DartKeyword> get allKeywords => _keywords.values.toList(growable: false);

  /// Returns the [DartKeyword] with the given [name]
  /// supported by Dart code with this [languageVersion],
  /// or `null` if not found.
  ///
  /// The [name] is normalized by trimming surrounding whitespace
  /// and converting to lowercase before lookup.
  ///
  /// If you only want to see if a keyword exists or is supported
  /// in the [languageVersion] tracked by this instance,
  /// you can use [supportsKeyword] instead.
  ///
  /// Example usge:
  ///
  /// ```dart
  /// final classKeyword = keywords.byName('class');
  /// if (classKeyword != null) {
  ///   print('`class` was introduced in ${classKeyword.introducedVersion}');
  /// }
  /// ```
  @useResult
  DartKeyword? byName(String name) {
    final normalizedName = name.trim().toLowerCase();
    return _keywords[normalizedName];
  }

  /// Returns whether a keyword with the given [name] exists
  /// and is supported by Dart code with this [languageVersion].
  ///
  /// The [name] is normalized by trimming surrounding whitespace
  /// and converting to lowercase before lookup.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// if (keywords.hasKeyword('abstract')) {
  ///   print('abstract is a keyword');
  /// }
  /// ```
  @useResult
  bool supportsKeyword(String name) {
    final normalizedName = name.trim().toLowerCase();
    return _keywords.containsKey(normalizedName);
  }
}

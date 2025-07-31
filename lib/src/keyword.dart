import 'package:language_version/language_version.dart';
import 'package:meta/meta.dart';

/// A keyword in the Dart programming language.
///
/// A keyword is a reserved word that has special meaning in Dart and
/// depending on the type, can't be used as an identifier in certain contexts.
abstract final class DartKeyword {
  /// The name of this keyword as it appears in Dart source code.
  ///
  /// Some common examples include `class`, `if`, `for`, and `async`.
  @useResult
  String get name;

  /// The type of restrictions this keyword has as an identifier,
  /// indicating when it can or can't be used as an identifier.
  @useResult
  DartKeywordReserveType get reserveType;

  /// Links to official documentation for this keyword.
  ///
  /// This might include links to the Dart language specification,
  /// the Dart language documentation, or other authoritative sources that
  /// explain this keyword's usage.
  ///
  /// Some keywords are used in multiple contexts, such as
  /// `final` for variable declarations and `final` as a class modifier.
  /// Each usage situation should have at least one link.
  @useResult
  List<Uri> get documentationLinks;

  /// The Dart [language version][] in which this keyword was introduced.
  ///
  /// [language version]: https://dart.dev/to/language-version
  @useResult
  LanguageVersion get introducedVersion;
}

/// Categorizations of how a Dart keyword is
/// reserved as an identifier in the language.
enum DartKeywordReserveType {
  /// A built-in identifier that has special meaning in certain contexts.
  ///
  /// Built-in identifiers can't be used as the names of types,
  /// such as of a class or enum, extensions, or as an import prefix.
  /// A few common examples include `abstract`, `extension`, and `required`.
  builtInIdentifier,

  /// A contextual keyword that only has special meaning in specific contexts.
  ///
  /// Contextual keywords can be used as identifiers everywhere except in
  /// the specific contexts where they have special meaning.
  /// Currently the only contextual keywords are `async` and `await`.
  contextual,

  /// A fully reserved word that can't be used as an identifier.
  ///
  /// Reserved words have special meaning in the language and
  /// can't be used as identifiers in any context.
  /// A few common examples include `if`, `class`, and `true`.
  reserved,

  /// Keywords that can be used as an identifier without restriction.
  ///
  /// A few common examples include `sealed`, `async`, and `show`.
  never,
}

/// Internal implementation of [DartKeyword].
///
/// This class should not be used directly by external packages.
/// It provides a concrete implementation of the [DartKeyword] interface with
/// additional tracking for keywords that have been
/// removed or replaced in newer language versions.
@internal
final class InternalDartKeyword implements DartKeyword {
  @override
  final String name;
  @override
  final DartKeywordReserveType reserveType;
  @override
  final List<Uri> documentationLinks;
  @override
  final LanguageVersion introducedVersion;

  /// The language version in which this keyword was removed or replaced.
  ///
  /// This is `null` for keywords that are still active in the language.
  /// When non-null, it indicates the version where
  /// this keyword's status changed, either being removed entirely or
  /// having its [reserveType] changed.
  @useResult
  final LanguageVersion? removedOrReplacedVersion;

  /// Creates a new [InternalDartKeyword] for the keyword with
  /// the specified [name], [reserveType], [introducedVersion],
  /// [documentationLinks], and on optional [removedOrReplacedVersion].
  InternalDartKeyword({
    required this.name,
    required this.reserveType,
    required this.introducedVersion,
    this.documentationLinks = const [],
    this.removedOrReplacedVersion,
  });

  @override
  String toString() =>
      'Keyword('
      'name: $name, '
      'reserveType: $reserveType, '
      'introducedVersion: $introducedVersion)';
}

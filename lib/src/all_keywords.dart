import 'package:language_version/language_version.dart';
import 'package:meta/meta.dart';

import 'keyword.dart';

/// A comprehensive list of all Dart language keywords since Dart 1.0,
/// represented by [DartKeyword] instances with version details.
@internal
@useResult
final List<InternalDartKeyword> internalKeywords = [
  InternalDartKeyword(
    name: 'abstract',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/abstract'),
    ],
  ),
  InternalDartKeyword(
    name: 'as',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/as'),
    ],
  ),
  InternalDartKeyword(
    name: 'assert',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/assert'),
    ],
  ),
  InternalDartKeyword(
    name: 'async',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 9),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/async'),
    ],
  ),
  InternalDartKeyword(
    name: 'await',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 9),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/await'),
    ],
  ),
  InternalDartKeyword(
    name: 'base',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(3, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/base'),
    ],
  ),
  InternalDartKeyword(
    name: 'break',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/break'),
    ],
  ),
  InternalDartKeyword(
    name: 'case',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/case'),
    ],
  ),
  InternalDartKeyword(
    name: 'catch',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/catch'),
    ],
  ),
  InternalDartKeyword(
    name: 'class',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/class'),
    ],
  ),
  InternalDartKeyword(
    name: 'const',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/const'),
    ],
  ),
  InternalDartKeyword(
    name: 'continue',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/continue'),
    ],
  ),
  InternalDartKeyword(
    name: 'covariant',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 22),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/covariant'),
    ],
  ),
  InternalDartKeyword(
    name: 'default',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/default'),
    ],
  ),
  InternalDartKeyword(
    name: 'deferred',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 6),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/deferred'),
    ],
  ),
  InternalDartKeyword(
    name: 'do',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/do'),
    ],
  ),
  InternalDartKeyword(
    name: 'dynamic',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/dynamic'),
    ],
  ),
  InternalDartKeyword(
    name: 'else',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/else'),
    ],
  ),
  InternalDartKeyword(
    name: 'enum',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 9),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/enum'),
    ],
  ),
  InternalDartKeyword(
    name: 'export',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/export'),
    ],
  ),
  InternalDartKeyword(
    name: 'extends',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/extends'),
    ],
  ),
  InternalDartKeyword(
    name: 'extension',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(2, 7),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/extension'),
      Uri.https('dart.dev', 'language/extension-types'),
    ],
  ),
  InternalDartKeyword(
    name: 'external',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/external'),
    ],
  ),
  InternalDartKeyword(
    name: 'factory',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/factory'),
    ],
  ),
  InternalDartKeyword(
    name: 'false',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/false'),
    ],
  ),
  InternalDartKeyword(
    name: 'final',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/final'),
      Uri.https('dart.dev', 'language/class-modifiers#final'),
    ],
  ),
  InternalDartKeyword(
    name: 'finally',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/finally'),
    ],
  ),
  InternalDartKeyword(
    name: 'for',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/for'),
    ],
  ),
  InternalDartKeyword(
    name: 'Function',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/function'),
    ],
  ),
  InternalDartKeyword(
    name: 'get',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/get'),
    ],
  ),
  InternalDartKeyword(
    name: 'hide',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/hide'),
    ],
  ),
  InternalDartKeyword(
    name: 'if',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/if'),
    ],
  ),
  InternalDartKeyword(
    name: 'implements',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/implements'),
    ],
  ),
  InternalDartKeyword(
    name: 'import',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/import'),
    ],
  ),
  InternalDartKeyword(
    name: 'in',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/in'),
    ],
  ),
  InternalDartKeyword(
    name: 'interface',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/interface'),
    ],
  ),
  InternalDartKeyword(
    name: 'is',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/is'),
    ],
  ),
  InternalDartKeyword(
    name: 'late',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(2, 12),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/is'),
    ],
  ),
  InternalDartKeyword(
    name: 'library',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/library'),
    ],
  ),
  InternalDartKeyword(
    name: 'mixin',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(2, 1),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/mixin'),
    ],
  ),
  InternalDartKeyword(
    name: 'native',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    removedOrReplacedVersion: const LanguageVersion(2, 15),
    documentationLinks: [
      Uri.https('github.com', 'dart-lang/sdk/issues/45451'),
    ],
  ),
  InternalDartKeyword(
    name: 'new',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/new'),
    ],
  ),
  InternalDartKeyword(
    name: 'null',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/null'),
    ],
  ),
  InternalDartKeyword(
    name: 'of',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/of'),
    ],
  ),
  InternalDartKeyword(
    name: 'on',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/on'),
    ],
  ),
  InternalDartKeyword(
    name: 'operator',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/operator'),
    ],
  ),
  InternalDartKeyword(
    name: 'part',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/part'),
    ],
  ),
  InternalDartKeyword(
    name: 'required',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(2, 12),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/required'),
    ],
  ),
  InternalDartKeyword(
    name: 'rethrow',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/rethrow'),
    ],
  ),
  InternalDartKeyword(
    name: 'return',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/return'),
    ],
  ),
  InternalDartKeyword(
    name: 'sealed',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(3, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/sealed'),
    ],
  ),
  InternalDartKeyword(
    name: 'set',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/set'),
    ],
  ),
  InternalDartKeyword(
    name: 'show',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/show'),
    ],
  ),
  InternalDartKeyword(
    name: 'static',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/static'),
    ],
  ),
  InternalDartKeyword(
    name: 'super',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/super'),
    ],
  ),
  InternalDartKeyword(
    name: 'switch',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/switch'),
    ],
  ),
  InternalDartKeyword(
    name: 'sync',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 9),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/sync'),
    ],
  ),
  InternalDartKeyword(
    name: 'this',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/this'),
    ],
  ),
  InternalDartKeyword(
    name: 'throw',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/throw'),
    ],
  ),
  InternalDartKeyword(
    name: 'true',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/true'),
    ],
  ),
  InternalDartKeyword(
    name: 'try',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/try'),
    ],
  ),
  InternalDartKeyword(
    name: 'type',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(3, 3),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/type'),
    ],
  ),
  InternalDartKeyword(
    name: 'typedef',
    reserveType: DartKeywordReserveType.builtInIdentifier,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/typedef'),
    ],
  ),
  InternalDartKeyword(
    name: 'var',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/var'),
    ],
  ),
  InternalDartKeyword(
    name: 'void',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/void'),
    ],
  ),
  InternalDartKeyword(
    name: 'when',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(3, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/when'),
    ],
  ),
  InternalDartKeyword(
    name: 'with',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/with'),
    ],
  ),
  InternalDartKeyword(
    name: 'while',
    reserveType: DartKeywordReserveType.reserved,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/while'),
    ],
  ),
  InternalDartKeyword(
    name: 'yield',
    reserveType: DartKeywordReserveType.contextual,
    introducedVersion: const LanguageVersion(1, 0),
    documentationLinks: [
      Uri.https('dart.dev', 'keyword/yield'),
    ],
  ),
];

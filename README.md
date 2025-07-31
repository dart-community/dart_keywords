A package for determining information about the keywords supported by
Dart at a specific [language versions](https://dart.dev/to/language-version).

## Installation

To use `package:dart_keywords` and access its keyword information,
first add it as a dependency in your `pubspec.yaml` file:

```shell
dart pub add dart_keywords
```

If you need information about a specific language version,
you'll also need to add [`package:language_version`][] as a dependency:

```shell
dart pub add language_version
```

[`package:language_version`]: https://pub.dev/packages/language_version

## Usage

The package contains a singular built-in library:

- `package:dart_keywords/dart_keywords.dart`

  Provides the `DartKeywords` type for determining the keywords supported by
  Dart code at a specific language version.
  Keywords are represented as a `DartKeyword` which provides information
  about the keyword's name, ability to be used as an identifier,
  and when support for it was introduced.

### Determine the keywords supported by a language version

To access the keywords supported by a specific Dart language version,
use the `DartKeywords.forVersion` factory constructor.

```dart
import 'package:dart_keywords/dart_keywords.dart';
import 'package:language_version/language_version.dart';

void main() {
  // Get the keywords for a language version of 3.0.
  final dart3Keywords = DartKeywords.forVersion(LanguageVersion(3, 0));

  // List all keywords supported by language version 3.0.
  for (final keyword in dart3Keywords.allKeywords) {
    print(keyword.name);
  }
}
```

If you don't care about the language version,
you can use the `DartKeywords.forLatest` factory constructor instead.
It determines and returns the keywords supported by the
latest language version that is supported by the package.

```dart
import 'package:dart_keywords/dart_keywords.dart';

void main() {
  // Get the keywords for the latest language version supported by the package.
  final dart3Keywords = DartKeywords.forLatest();

  // List all keywords supported by the latest supported language version.
  for (final keyword in dart3Keywords.allKeywords) {
    print('${keyword.name} (${keyword.reserveType.name})');
  }
}
```

### Check if a keyword exists or is supported by a language version

If you just want to check if the specified language version supports a keyword,
use the `supportsKeyword()` instance method.

```dart
import 'package:dart_keywords/dart_keywords.dart';
import 'package:language_version/language_version.dart';

void main() {
  final keywords = DartKeywords.forVersion(LanguageVersion(3, 0));

  if (keywords.supportsKeyword('sealed')) {
    print('`sealed` is a keyword in Dart code with language version 3.0.');
  }
}
```

### Find out if a keyword can be used as an identifier

Each keyword has a `reserveType` that indicates whether it
can be used as an identifier and what restrictions apply.
You can use the `byName()` instance method to get details
about a specific keyword, then check its reservation type.

```dart
import 'package:dart_keywords/dart_keywords.dart';

void main() {
  final keywords = DartKeywords.forLatest();

  // Check if the 'async' keyword can be used as an identifier.
  final asyncKeyword = keywords.byName('async');
  if (asyncKeyword != null) {
    switch (asyncKeyword.reserveType) {
      case DartKeywordReserveType.never:
        print(
          '`${asyncKeyword.name}` can be used '
          'anywhere as an identifier.',
        );
      case DartKeywordReserveType.contextual:
        print(
          '`${asyncKeyword.name}` can be used '
          'as an identifier except in specific contexts.',
        );
      case DartKeywordReserveType.builtInIdentifier:
        print(
          '`${asyncKeyword.name}` can\'t be used '
          'as a type name or import prefix.',
        );
      case DartKeywordReserveType.reserved:
        print(
          '`${asyncKeyword.name}` can\'t be used '
          'as an identifier at all.',
        );
    }
  }
}
```

### Get documentation links to learn more about a keyword

Keywords might have associated documentation links that link to
official information or guidelines about their usage.
Access these through the `documentationLinks` instance property.

```dart
import 'package:dart_keywords/dart_keywords.dart';

void main() {
  final keywords = DartKeywords.forLatest();
  final classKeyword = keywords.byName('class');

  if (classKeyword != null && classKeyword.documentationLinks.isNotEmpty) {
    print('Learn more about `${classKeyword.name}`:');
    for (final link in classKeyword.documentationLinks) {
      print('  - $link');
    }
  }
}
```

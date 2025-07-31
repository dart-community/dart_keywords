import 'package:dart_keywords/dart_keywords.dart';
import 'package:language_version/language_version.dart';

void main() {
  final keywordsBeforeDart3 = DartKeywords.forVersion(
    const LanguageVersion(2, 19),
  );
  final keywordsInDart3 = DartKeywords.forVersion(
    const LanguageVersion(3, 0),
  );

  // Since 'sealed' is a valid keyword in Dart language version 3.0,
  // this call will print a message indicating that the keyword is supported.
  throwIfNotSupported(keywordsInDart3, keyword: 'sealed');

  // Since 'sealed' is not a valid keyword in Dart language version 2.19,
  // this call will throw an error.
  throwIfNotSupported(keywordsBeforeDart3, keyword: 'sealed');
}

void throwIfNotSupported(DartKeywords keywords, {required String keyword}) {
  if (keywords.supportsKeyword(keyword)) {
    print(
      'The keyword "$keyword" is supported in '
      'language version ${keywords.languageVersion}',
    );
  } else {
    throw StateError(
      'The keyword "$keyword" is not supported in '
      'language version ${keywords.languageVersion}',
    );
  }
}

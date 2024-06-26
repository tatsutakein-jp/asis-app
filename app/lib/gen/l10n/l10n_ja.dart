// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get bottomNavigationBarHome => 'ホーム';

  @override
  String get bottomNavigationBarQuest => 'クエスト';

  @override
  String get bottomNavigationBarAccount => 'アカウント';
}

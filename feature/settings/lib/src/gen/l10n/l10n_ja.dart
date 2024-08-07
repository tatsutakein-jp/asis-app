import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get settingsAppBarTitle => '設定';

  @override
  String get settingsThemeSettingTileTitle => 'テーマ設定';

  @override
  String get settingsThemeSettingTileSubtitle => '設定中のテーマ: ';

  @override
  String get settingsThemeSettingTitle => 'テーマ設定';

  @override
  String get settingsThemeSettingSystem => 'システム';

  @override
  String get settingsThemeSettingLightMode => 'ライトモード';

  @override
  String get settingsThemeSettingDarkMode => 'ダークモード';

  @override
  String get settingsThemeSettingPositive => 'OK';

  @override
  String get settingsThemeSettingNegative => 'キャンセル';

  @override
  String get settingsOpenSourceLicenses => 'オープンソースライセンス';

  @override
  String get settingsSignOut => 'サインアウト';

  @override
  String get settingsAppConfigAppVersion => 'アプリバージョン';
}

// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get settingsAppBarTitle => 'Settings';

  @override
  String get settingsThemeSettingTileTitle => 'Theme Settings';

  @override
  String get settingsThemeSettingTileSubtitle => 'Current Theme: ';

  @override
  String get settingsThemeSettingTitle => 'Theme Settings';

  @override
  String get settingsThemeSettingSystem => 'System';

  @override
  String get settingsThemeSettingLightMode => 'Light Mode';

  @override
  String get settingsThemeSettingDarkMode => 'Dark Mode';

  @override
  String get settingsThemeSettingPositive => 'OK';

  @override
  String get settingsThemeSettingNegative => 'Cancel';

  @override
  String get settingsOpenSourceLicenses => 'Open Source Licenses';

  @override
  String get settingsSignOut => 'Sign Out';

  @override
  String get settingsAppConfigAppVersion => 'App Version';
}

import 'package:app/gen/l10n/l10n.dart';
import 'package:core_ui/l10n.dart' as core_ui;
import 'package:feature_auth/feature_auth.dart' as feature_auth;
import 'package:feature_feed/feature_feed.dart' as feature_feed;
import 'package:feature_home/feature_home.dart' as feature_home;
import 'package:feature_quest/feature_quest.dart' as feature_quest;
import 'package:feature_settings/feature_settings.dart' as feature_settings;

const appLocalizationsDelegates = [
  ...L10n.localizationsDelegates,
  ...core_ui.L10n.localizationsDelegates,
  ...feature_auth.L10n.localizationsDelegates,
  ...feature_feed.L10n.localizationsDelegates,
  ...feature_home.L10n.localizationsDelegates,
  ...feature_quest.L10n.localizationsDelegates,
  ...feature_settings.L10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...L10n.supportedLocales,
  ...core_ui.L10n.supportedLocales,
  ...feature_auth.L10n.supportedLocales,
  ...feature_feed.L10n.supportedLocales,
  ...feature_home.L10n.supportedLocales,
  ...feature_quest.L10n.supportedLocales,
  ...feature_settings.L10n.supportedLocales,
];

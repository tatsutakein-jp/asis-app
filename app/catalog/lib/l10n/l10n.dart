import 'package:core_designsystem/l10n.dart';
import 'package:core_ui/l10n.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:feature_settings/feature_settings.dart';

const appLocalizationsDelegates = [
  ...CoreDesignSystemL10n.localizationsDelegates,
  ...CoreUiL10n.localizationsDelegates,
  ...FeatureAuthL10n.localizationsDelegates,
  ...FeatureFeedL10n.localizationsDelegates,
  ...FeatureHomeL10n.localizationsDelegates,
  ...FeatureQuestL10n.localizationsDelegates,
  ...FeatureSettingsL10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...CoreDesignSystemL10n.supportedLocales,
  ...CoreUiL10n.supportedLocales,
  ...FeatureAuthL10n.supportedLocales,
  ...FeatureFeedL10n.supportedLocales,
  ...FeatureHomeL10n.supportedLocales,
  ...FeatureQuestL10n.supportedLocales,
  ...FeatureSettingsL10n.supportedLocales,
];

import 'package:app/gen/l10n/l10n.dart';
import 'package:feature_auth/feature_auth.dart' as feature_auth;

const appLocalizationsDelegates = [
  ...L10n.localizationsDelegates,
  ...feature_auth.L10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...L10n.supportedLocales,
  ...feature_auth.L10n.supportedLocales,
];

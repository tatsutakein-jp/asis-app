// ignore_for_file: type=lint

import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get authSignInAppBarTitle => 'Sign In';

  @override
  String get authSignInFormEmailLabel => 'Email Address';

  @override
  String get authSignInFormEmailEmptyErrorMessage =>
      'Please enter your email address';

  @override
  String get authSignInFormEmailInvalidErrorMessage =>
      'Please enter a valid email address';

  @override
  String get authSignInFormPasswordLabel => 'Password';

  @override
  String get authSignInFormPasswordEmptyErrorMessage =>
      'Please enter your password';

  @override
  String get authSignInFormPasswordInvalidErrorMessage =>
      'Password must be at least 6 characters long';

  @override
  String get authSignInFormSubmit => 'Sign In';
}

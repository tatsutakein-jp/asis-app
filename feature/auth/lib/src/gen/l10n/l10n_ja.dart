import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get authSignInAppBarTitle => 'サインイン';

  @override
  String get authSignInFormEmailLabel => 'メールアドレス';

  @override
  String get authSignInFormEmailEmptyErrorMessage => 'メールアドレスを入力してください';

  @override
  String get authSignInFormEmailInvalidErrorMessage => '有効なメールアドレスを入力してください';

  @override
  String get authSignInFormPasswordLabel => 'パスワード';

  @override
  String get authSignInFormPasswordEmptyErrorMessage => 'パスワードを入力してください';

  @override
  String get authSignInFormPasswordInvalidErrorMessage =>
      'パスワードは少なくとも6文字以上である必要があります';

  @override
  String get authSignInFormSubmit => 'サインインする';
}

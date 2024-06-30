// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get questListAppBarTitle => 'クエスト';

  @override
  String get questListAddQuest => 'クエストを追加する';

  @override
  String get questDetailAppBarTitle => 'クエスト';

  @override
  String get questAddAppBarTitle => 'クエストを追加';

  @override
  String get questAddFormTitleLabel => 'タイトル';

  @override
  String get questAddFormTitleEmptyErrorMessage => 'タイトルを入力してください';

  @override
  String get questAddFormDescriptionLabel => '説明';

  @override
  String get questAddFormNoteLabel => 'ノート';

  @override
  String get questAddFormSubmit => 'クエストを追加する';
}

import 'l10n.dart';

// ignore_for_file: type=lint

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
  String get questDetailContentBegunAtLabel => '開始日時';

  @override
  String get questDetailContentBegunAtEmptyText => '設定されていません';

  @override
  String get questDetailContentEndedAtLabel => '終了日時';

  @override
  String get questDetailContentEndedAtEmptyText => '設定されていません';

  @override
  String get questDetailContentCategoryLabel => 'カテゴリ';

  @override
  String get questDetailContentCategoryEmptyText => '設定されていません';

  @override
  String get questDetailContentStatusLabel => 'ステータス';

  @override
  String get questDetailContentStatusEmptyText => '設定されていません';

  @override
  String get questDetailContentNoteLabel => 'ノート';

  @override
  String get questDetailContentNoteEmptyText => '設定されていません';

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

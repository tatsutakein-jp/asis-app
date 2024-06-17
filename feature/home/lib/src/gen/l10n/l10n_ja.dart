// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get homeAppBarTitle => 'ホーム';

  @override
  String get homeQuestOverviewSectionTitle => 'クエスト概要';

  @override
  String get homeQuestOverviewSectionTotalQuests => '総クエスト数';

  @override
  String get homeQuestOverviewSectionQuestsCompleted => '完了したクエスト';

  @override
  String get homeQuestOverviewSectionPendingQuests => '未完了のクエスト';

  @override
  String get homeQuestOverviewSectionQuickAddQuest => 'クイック追加';

  @override
  String get homeRecentQuestListSectionYourQuestList => 'クエスト一覧';

  @override
  String get homeRecentQuestListSectionMore => 'さらに表示';
}

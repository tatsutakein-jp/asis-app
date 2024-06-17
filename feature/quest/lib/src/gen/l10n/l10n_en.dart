// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get questListAppBarTitle => 'Quests';

  @override
  String get questListAddQuest => 'Add Quest';

  @override
  String get questDetailAppBarTitle => 'Quest';

  @override
  String get questAddAppBarTitle => 'Add Quest';

  @override
  String get questAddFormSubmit => 'Add Quest';
}

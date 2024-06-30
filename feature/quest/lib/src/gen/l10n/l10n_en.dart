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
  String get questDetailContentBegunAtLabel => 'Begun At';

  @override
  String get questDetailContentBegunAtEmptyText => 'Not set';

  @override
  String get questDetailContentEndedAtLabel => 'Ended At';

  @override
  String get questDetailContentEndedAtEmptyText => 'Not set';

  @override
  String get questDetailContentCategoryLabel => 'Category';

  @override
  String get questDetailContentCategoryEmptyText => 'Not set';

  @override
  String get questDetailContentStatusLabel => 'Status';

  @override
  String get questDetailContentStatusEmptyText => 'Not set';

  @override
  String get questDetailContentNoteLabel => 'Note';

  @override
  String get questDetailContentNoteEmptyText => 'Not set';

  @override
  String get questAddAppBarTitle => 'Add Quest';

  @override
  String get questAddFormTitleLabel => 'Title';

  @override
  String get questAddFormTitleEmptyErrorMessage => 'Please enter a title';

  @override
  String get questAddFormDescriptionLabel => 'Description';

  @override
  String get questAddFormNoteLabel => 'Note';

  @override
  String get questAddFormSubmit => 'Add Quest';
}

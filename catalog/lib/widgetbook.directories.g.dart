// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:catalog/components/card.dart' as _i3;
import 'package:catalog/components/scaffold.dart' as _i2;
import 'package:catalog/pages/auth_page.dart' as _i4;
import 'package:catalog/pages/home_page.dart' as _i5;
import 'package:catalog/pages/quest_page.dart' as _i6;
import 'package:catalog/pages/settings_page.dart' as _i7;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'Components',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'AsisScaffold',
        useCase: _i1.WidgetbookUseCase(
          name: 'AsisScaffold',
          builder: _i2.asisScaffoldUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'TappableCard',
        useCase: _i1.WidgetbookUseCase(
          name: 'TappableCard',
          builder: _i3.asisScaffoldUseCase,
        ),
      ),
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'Pages',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'AuthPage',
        useCase: _i1.WidgetbookUseCase(
          name: 'AuthPage',
          builder: _i4.authPageUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'HomePage',
        useCase: _i1.WidgetbookUseCase(
          name: 'HomePage',
          builder: _i5.homePageUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'QuestPage',
        useCase: _i1.WidgetbookUseCase(
          name: 'QuestPage',
          builder: _i6.questPageUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'SettingsPage',
        useCase: _i1.WidgetbookUseCase(
          name: 'SettingsPage',
          builder: _i7.settingsPageUseCase,
        ),
      ),
    ],
  ),
];

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_catalog/designsystem/component/brand_icon.dart' as _i3;
import 'package:app_catalog/designsystem/component/card.dart' as _i4;
import 'package:app_catalog/designsystem/component/scaffold.dart' as _i2;
import 'package:app_catalog/feature/auth/page/auth_page.dart' as _i5;
import 'package:app_catalog/feature/home/page/home_page.dart' as _i6;
import 'package:app_catalog/feature/my/page/settings_page.dart' as _i7;
import 'package:app_catalog/feature/quest/page/quest_add_page.dart' as _i8;
import 'package:app_catalog/feature/quest/page/quest_detail_page.dart' as _i9;
import 'package:app_catalog/feature/quest/page/quest_page.dart' as _i10;
import 'package:app_catalog/ui/component/quest_list_tile.dart' as _i11;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'DesignSystem',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AsisScaffold',
            useCase: _i1.WidgetbookUseCase(
              name: 'AsisScaffold',
              builder: _i2.asisScaffoldUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'BrandIcon',
            useCase: _i1.WidgetbookUseCase(
              name: 'BrandIcon',
              builder: _i3.asisScaffoldUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'TappableCard',
            useCase: _i1.WidgetbookUseCase(
              name: 'TappableCard',
              builder: _i4.asisScaffoldUseCase,
            ),
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'Feature',
    children: [
      _i1.WidgetbookFolder(
        name: 'auth',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AuthPage',
            useCase: _i1.WidgetbookUseCase(
              name: 'AuthPage',
              builder: _i5.authPageUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'home',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'HomePage',
            useCase: _i1.WidgetbookUseCase(
              name: 'HomePage',
              builder: _i6.homePageUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'my',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'SettingsPage',
            useCase: _i1.WidgetbookUseCase(
              name: 'SettingsPage',
              builder: _i7.settingsPageUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'quest',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'QuestAddPage',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestAddPage',
              builder: _i8.questAddPageUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'QuestDetailPage',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestDetailPage',
              builder: _i9.questPageUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'QuestListPage',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestPage',
              builder: _i10.questPageUseCase,
            ),
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'UI',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'QuestListTile',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestListTile',
              builder: _i11.asisScaffoldUseCase,
            ),
          )
        ],
      )
    ],
  ),
];

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:catalog/pages/auth_page.dart' as _i2;
import 'package:catalog/pages/home_page.dart' as _i3;
import 'package:catalog/widgets/green_container.dart' as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'Pages',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'AuthPage',
        useCase: _i1.WidgetbookUseCase(
          name: 'Light theme',
          builder: _i2.lightThemeUseCase,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'HomePage',
        useCase: _i1.WidgetbookUseCase(
          name: 'Light theme',
          builder: _i3.lightThemeUseCase,
        ),
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Container',
        useCase: _i1.WidgetbookUseCase(
          name: 'with green color',
          builder: _i4.greenContainerUseCase,
        ),
      )
    ],
  ),
];

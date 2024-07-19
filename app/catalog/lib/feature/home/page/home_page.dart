import 'package:feature_home/feature_home.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'HomePage',
  type: HomePage,
  path: '[Feature]/home',
)
HomePage homePageUseCase(BuildContext context) {
  return HomePage(
    onTapNotification: () {},
    onQuickAddButtonPressed: () {},
    onTapQuestListItem: (_) {},
    onMoreButtonPressed: () {},
  );
}

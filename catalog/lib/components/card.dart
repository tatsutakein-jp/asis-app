import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'TappableCard',
  type: TappableCard,
  path: '[Components]',
)
Widget asisScaffoldUseCase(BuildContext context) {
  return TappableCard(
    onTap: () {
      // Navigator.pushNamed(context, AppPagePath.questDetail);
    },
    child: const ListTile(
      title: Text('TappableCard'),
      subtitle: Text('TappableCard 1 description'),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
  );
}

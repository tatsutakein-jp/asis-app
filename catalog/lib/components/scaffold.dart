import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'AsisScaffold',
  type: AsisScaffold,
  path: '[Components]',
)
Widget asisScaffoldUseCase(BuildContext context) {
  return AsisScaffold(
    appBar: AsisAppBar(
      title: Text(
        context.knobs.string(
          label: 'AppBar Title',
          initialValue: 'AsisScaffold',
        ),
      ),
    ),
    body: Center(
      child: Text(
        context.knobs.string(
          label: 'Body Text',
          initialValue: 'AsisScaffold',
        ),
      ),
    ),
  );
}

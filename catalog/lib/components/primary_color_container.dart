import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'with primary color',
  type: Container,
)
Widget primaryColorContainerUseCase(BuildContext context) {
  return Column(
    children: [
      ColoredBox(
        color: Theme.of(context).colorScheme.primary,
        child: const SizedBox.square(
          dimension: 100,
        ),
      ),
    ],
  );
}

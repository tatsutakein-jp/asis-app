import 'package:catalog/widgetbook.directories.g.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,
      addons: [],
      integrations: [
        // To make addons & knobs work with Widgetbook Cloud
        WidgetbookCloudIntegration(),
      ],
    );
  }
}

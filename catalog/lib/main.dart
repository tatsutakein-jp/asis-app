import 'package:catalog/widgetbook.dart';
import 'package:core_model/build_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(FakeBuildConfig()),
      ],
      child: const WidgetbookApp(),
    ),
  );
}

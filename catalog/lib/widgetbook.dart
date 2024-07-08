import 'package:catalog/l10n/l10n.dart';
import 'package:catalog/widgetbook.directories.g.dart';
import 'package:core_designsystem/theme.dart';
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
      addons: <WidgetbookAddon>[
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme<ThemeData>(
              name: 'Light',
              data: lightTheme(null),
            ),
            WidgetbookTheme<ThemeData>(
              name: 'Dark',
              data: darkTheme(null),
            ),
          ],
        ),
        LocalizationAddon(
          locales: appSupportedLocales,
          localizationsDelegates: appLocalizationsDelegates,
          initialLocale: appSupportedLocales.first,
        ),
      ],
      integrations: [
        // To make addons & knobs work with Widgetbook Cloud
        WidgetbookCloudIntegration(),
      ],
    );
  }
}

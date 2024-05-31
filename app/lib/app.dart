import 'package:app/extension/theme.dart';
import 'package:app/router/app_router.dart';
import 'package:core_designsystem/theme.dart';
import 'package:core_domain/user_settings_use_case.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class AsisApp extends ConsumerWidget {
  const AsisApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final themeStream = ref.watch(themeStreamUseCaseProvider);
    final themeMode = themeStream.maybeWhen(
      data: (theme) => theme.mode,
      orElse: () => ThemeMode.system,
    );

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp.router(
          title: 'ASIS App',
          theme: lightTheme(lightDynamic),
          darkTheme: darkTheme(darkDynamic),
          themeMode: themeMode,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    );
  }
}

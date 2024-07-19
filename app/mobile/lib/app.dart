import 'package:core_designsystem/theme.dart';
import 'package:core_domain/user_settings_use_case.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app/extension/theme.dart';
import 'package:mobile_app/l10n/l10n.dart';
import 'package:mobile_app/router/app_router.dart';
import 'package:mobile_app/ui/toast.dart';

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
          title: 'ASIS',
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          theme: lightTheme(lightDynamic),
          darkTheme: darkTheme(darkDynamic),
          themeMode: themeMode,
          routerConfig: router,
          builder: (context, child) => Stack(
            children: [
              child!,
              Positioned(
                top: MediaQuery.of(context).padding.top + 10,
                left: 0,
                right: 0,
                bottom: 0,
                child: const ToastContainer(),
              ),
            ],
          ),
        );
      },
    );
  }
}

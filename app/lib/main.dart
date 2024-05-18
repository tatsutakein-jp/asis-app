import 'package:asis_app/app_initializer.dart';
import 'package:asis_app/extension/theme.dart';
import 'package:asis_app/router/app_router.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_designsystem/theme.dart';
import 'package:core_domain/user_settings_use_case.dart';
import 'package:core_model/build_config.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // Be sure to add this line if `PackageInfo.fromPlatform()`
  // is called before runApp()
  WidgetsFlutterBinding.ensureInitialized();

  final (
    :buildConfig,
    :isar,
    :dataStore,
    :firebaseAuthenticator,
  ) = await AppInitializer.initialize();

  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(buildConfig),
        isarProvider.overrideWithValue(isar),
        ...isarDatabaseProviders,
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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

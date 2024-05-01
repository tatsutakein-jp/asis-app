import 'package:asis_app/app_initializer.dart';
import 'package:asis_app/router/app_router.dart';
import 'package:core_database/isar.dart';
import 'package:core_designsystem/theme.dart';
import 'package:core_model/build_config.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // Be sure to add this line if `PackageInfo.fromPlatform()`
  // is called before runApp()
  WidgetsFlutterBinding.ensureInitialized();

  final buildConfig = await AppInitializer.initialize();

  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(buildConfig),
        ...isarDatabaseProviders,
      ],
      child: DevicePreview(
        enabled: devicePreviewEnabled,
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

final devicePreviewEnabled = !{
  TargetPlatform.iOS,
  TargetPlatform.android,
}.contains(defaultTargetPlatform);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp.router(
          title: 'ASIS App',
          theme: lightTheme(lightDynamic),
          darkTheme: darkTheme(darkDynamic),
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    );
  }
}

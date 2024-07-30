import 'package:core_analytics_firebase/analytics_firebase.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database_isar/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_model/config.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/app.dart';
import 'package:mobile_app/config/remote_config.dart';
import 'package:mobile_app/initializer/app_initializer.dart';
import 'package:mobile_app/ui/toast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final (
    :appConfig,
    :isar,
    :dataStore,
    :firebaseAnalytics,
    :firebaseAuthenticator,
    :firebaseRemoteConfig,
  ) = await initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appConfig),
        firebaseRemoteConfigProvider,
        ...isarDatabaseProviders(isar: isar),
        ...firebaseAnalyticsProviders(firebaseAnalytics: firebaseAnalytics),
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
        toastListKeyProvider.overrideWithValue(toastListKey),
      ],
      child: HookConsumer(
        builder: (context, ref, child) {
          useEffect(
            () {
              firebaseRemoteConfig.onConfigUpdated.listen((event) async {
                await firebaseRemoteConfig.activate();
                ref.invalidate(remoteConfigProvider);
              });
              return null;
            },
            [],
          );

          return const AsisApp();
        },
      ),
    ),
  );
}

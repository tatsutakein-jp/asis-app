import 'package:core_analytics_firebase/analytics_firebase.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database_isar/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_model/app_config.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app/app.dart';
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
  ) = await initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appConfig),
        ...isarDatabaseProviders(isar: isar),
        ...firebaseAnalyticsProviders(firebaseAnalytics: firebaseAnalytics),
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
        toastListKeyProvider.overrideWithValue(toastListKey),
      ],
      child: const AsisApp(),
    ),
  );
}

import 'package:app/app.dart';
import 'package:app/initializer/app_initializer.dart';
import 'package:core_analytics_firebase/analytics_firebase.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database_isar/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_model/build_config.dart';
import 'package:core_network_ferry/core_network_ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final (
    :buildConfig,
    :isar,
    :dataStore,
    :firebaseAnalytics,
    :firebaseAuthenticator,
  ) = await initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(buildConfig),
        // TODO: URL を環境別に設定する
        ...ferryClientProviders(uri: 'https://asis-stg.hasura.app/v1/graphql'),
        ...isarDatabaseProviders(isar: isar),
        ...firebaseAnalyticsProviders(firebaseAnalytics: firebaseAnalytics),
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
      ],
      child: const AsisApp(),
    ),
  );
}

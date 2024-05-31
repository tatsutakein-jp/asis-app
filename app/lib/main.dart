import 'package:app/app.dart';
import 'package:app/initializer/app_initializer.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database_isar/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_model/build_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final (
    :buildConfig,
    :isar,
    :dataStore,
    :firebaseAuthenticator,
  ) = await initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        buildConfigProvider.overrideWithValue(buildConfig),
        isarProvider.overrideWithValue(isar),
        ...isarDatabaseProviders,
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
      ],
      child: const AsisApp(),
    ),
  );
}

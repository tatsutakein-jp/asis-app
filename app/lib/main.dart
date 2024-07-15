import 'package:app/app.dart';
import 'package:app/initializer/app_initializer.dart';
import 'package:app/ui/toast.dart';
import 'package:core_analytics_firebase/analytics_firebase.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_database_isar/isar.dart';
import 'package:core_datastore/datastore.dart';
import 'package:core_model/app_config.dart';
import 'package:core_network_ferry/core_network_ferry.dart';
import 'package:core_network_firestore/core_network_firestore.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final (
    :appConfig,
    :isar,
    :dataStore,
    :firebaseAnalytics,
    :firebaseAuthenticator,
    :firebaseFirestore,
  ) = await initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appConfig),
        ...ferryClientProviders(),
        ...isarDatabaseProviders(isar: isar),
        ...firebaseAnalyticsProviders(firebaseAnalytics: firebaseAnalytics),
        ...firestoreNetworkProviders(firestore: firebaseFirestore),
        dataStoreProvider.overrideWithValue(dataStore),
        authenticatorProvider.overrideWithValue(firebaseAuthenticator),
        toastListKeyProvider.overrideWithValue(toastListKey),
      ],
      child: const AsisApp(),
    ),
  );
}

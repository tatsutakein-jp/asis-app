import 'package:app/auth/firebase_authenticator.dart';
import 'package:app/flavor/flavor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_model/app_config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

typedef InitializedValues = ({
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
  FirebaseFirestore firebaseFirestore,
});

Future<InitializedValues> initializeFirebase({
  required Flavor flavor,
}) async {
  await Firebase.initializeApp(
    options: flavor.firebaseOptions,
  );

  return (
    firebaseAnalytics: FirebaseAnalytics.instance,
    firebaseAuthenticator: FirebaseAuthenticator(
      firebaseAuth: FirebaseAuth.instance,
    ),
    firebaseFirestore: FirebaseFirestore.instance,
  );
}

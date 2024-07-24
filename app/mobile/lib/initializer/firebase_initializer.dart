import 'package:core_model/app_config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_app/auth/firebase_authenticator.dart';
import 'package:mobile_app/flavor/flavor.dart';

typedef InitializedValues = ({
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
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
  );
}

part of 'package:app/initializer/app_initializer.dart';

Future<FirebaseAuthenticator> _initializeFirebase({
  required Flavor flavor,
}) async {
  await Firebase.initializeApp(
    options: flavor.firebaseOptions,
  );

  return FirebaseAuthenticator(firebaseAuth: FirebaseAuth.instance);
}

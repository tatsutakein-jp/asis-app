import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

final class AppFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqK7RXw58_CeufJXO17acCJ7QcbZR-5eQ',
    appId: '1:1072330794106:android:abfa5bc7d30db305b887c3',
    messagingSenderId: '1072330794106',
    projectId: 'tobe-quest-dev',
    storageBucket: 'tobe-quest-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0b0cn2Jwj8HHdARVNHKjTc62z9o0TNOw',
    appId: '1:1072330794106:ios:72f15843812569dab887c3',
    messagingSenderId: '1072330794106',
    projectId: 'tobe-quest-dev',
    storageBucket: 'tobe-quest-dev.appspot.com',
    iosBundleId: 'quest.tobe.app.dev',
  );
}

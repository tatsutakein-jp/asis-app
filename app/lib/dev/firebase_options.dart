import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class AppFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAwygi_mldzMJHz4gdJpmRGdLVOw_1l2J4',
    appId: '1:651997738463:web:f3054569ea4d7815b2c06a',
    messagingSenderId: '651997738463',
    projectId: 'asis-quest-dev',
    authDomain: 'asis-quest-dev.firebaseapp.com',
    storageBucket: 'asis-quest-dev.appspot.com',
    measurementId: 'G-WCSS0KK5YN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAF-ryp9Y1o9Kmrlv5FvOLOErhlzg-bGv0',
    appId: '1:651997738463:android:21596fec0e3a02cab2c06a',
    messagingSenderId: '651997738463',
    projectId: 'asis-quest-dev',
    storageBucket: 'asis-quest-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeAdLVjn4x4JOQ2U3-T3e1bh6swTQaKHE',
    appId: '1:651997738463:ios:02f8dd3c1ea62bb2b2c06a',
    messagingSenderId: '651997738463',
    projectId: 'asis-quest-dev',
    storageBucket: 'asis-quest-dev.appspot.com',
    iosBundleId: 'quest.asis.app.dev',
  );
}

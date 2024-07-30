import 'package:core_model/config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_app/flavor/dev/firebase_options.dart' as dev;
import 'package:mobile_app/flavor/prod//firebase_options.dart' as prod;
import 'package:mobile_app/flavor/stg/firebase_options.dart' as stg;

extension FlavorX on Flavor {
  FirebaseOptions get firebaseOptions => switch (this) {
        Flavor.dev => dev.AppFirebaseOptions.currentPlatform,
        Flavor.stg => stg.AppFirebaseOptions.currentPlatform,
        Flavor.prod => prod.AppFirebaseOptions.currentPlatform,
      };
}

import 'package:app/flavor/dev/firebase_options.dart' as dev;
import 'package:app/flavor/prod//firebase_options.dart' as prod;
import 'package:app/flavor/stg/firebase_options.dart' as stg;
import 'package:core_model/app_config.dart';
import 'package:firebase_core/firebase_core.dart';

extension FlavorX on Flavor {
  FirebaseOptions get firebaseOptions => switch (this) {
        Flavor.dev => dev.AppFirebaseOptions.currentPlatform,
        Flavor.stg => stg.AppFirebaseOptions.currentPlatform,
        Flavor.prod => prod.AppFirebaseOptions.currentPlatform,
      };
}

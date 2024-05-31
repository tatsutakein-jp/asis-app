part of 'package:app/initializer/app_initializer.dart';

void _initializeLogger() {
  Logger.initialize(includeCallerInfo: kDebugMode);
}

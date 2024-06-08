import 'package:core_common/log.dart';
import 'package:flutter/foundation.dart';

void initializeLogger() {
  Logger.initialize(includeCallerInfo: kDebugMode);
}

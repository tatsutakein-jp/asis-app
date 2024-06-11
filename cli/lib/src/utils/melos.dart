import 'dart:convert';
import 'dart:io';

import 'package:cli/src/model/melos_package.dart';
import 'package:mason_logger/mason_logger.dart';

/// melos list --json の結果をパースして [MelosPackage] のリストを返す
Future<List<MelosPackage>> executeMelosPackageListProcess({
  void Function()? onFailure,
}) async {
  final melosListResult = await Process.run('melos', ['list', '--json']);
  if (melosListResult.exitCode != ExitCode.success.code) {
    onFailure?.call();
    exit(melosListResult.exitCode);
  }

  return (jsonDecode(melosListResult.stdout as String) as List<dynamic>)
      .map((e) => MelosPackage.fromJson(e as Map<String, dynamic>))
      .toList();
}

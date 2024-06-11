import 'dart:io';

import 'package:mason_logger/mason_logger.dart';

Future<String> executeGitRevParse({
  void Function()? onFailure,
}) async {
  final gitRevParseResult = await Process.run('git', [
    'rev-parse',
    '--show-toplevel',
  ]);
  if (gitRevParseResult.exitCode != ExitCode.success.code) {
    onFailure?.call();
    exit(gitRevParseResult.exitCode);
  }

  return gitRevParseResult.stdout.toString().trim();
}

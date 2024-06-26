// ignore_for_file: unreachable_from_main
import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart';
import 'package:yaml_edit/yaml_edit.dart';

import 'utils/melos.dart';
import 'utils/path.dart';

const autoGeneratedLabelComment = '# <!-- This is an auto-generated label -->';

void runGeneratePackageLabeler() {
  final rootDir = fetchGitRootDirPath();
  final labelerFile = File(join(rootDir, '.github', 'labeler.yml'));
  if (!labelerFile.existsSync()) {
    fail('Required files not found.');
  }

  final melosPackageList = fetchMelosPackageList();
  final labelsContentLines = labelerFile.readAsLinesSync();
  // 自動生成の区切り行を探す
  final autoGeneratedIndex = labelsContentLines.indexWhere(
    (line) => line.contains(autoGeneratedLabelComment),
  );
  if (autoGeneratedIndex == -1) {
    fail('Auto-generated label section not found.');
  }

  // 自動生成以前のテキストのみ取得する
  final preGeneratedContent = labelsContentLines
      .sublist(
        0,
        autoGeneratedIndex,
      )
      .join('\n');

  // YamlEditorを使用してYAMLを編集
  final yamlEditor = YamlEditor('labels:');

  final generatedLabels = <Map<String, dynamic>>[];
  for (final package in melosPackageList) {
    final path = package.location.replaceAll('$rootDir/', '');
    final label = '@$path';

    final newLabel = <String, dynamic>{
      'label': label,
      'files': <String>[
        '$path/.+',
      ],
    };

    generatedLabels.add(newLabel);
  }

  // auto-generated部分に新しいラベルを追加
  yamlEditor.update(['labels'], generatedLabels);

  final newYamlString = yamlEditor.toString();
  final modifiedLines = <String>['  $autoGeneratedLabelComment'];
  for (final line in newYamlString.split('\n')) {
    if (line.startsWith('labels:')) {
      continue;
    }
    if (line.startsWith('  -') && modifiedLines.length != 1) {
      modifiedLines.add('');
    }
    modifiedLines.add(line.replaceAll(r'\/', '/'));
  }

  final post = modifiedLines.join('\n');

  // コメント行を保持しつつ新しいYAML内容に置き換える
  final updatedContent = '$preGeneratedContent\n$post\n';

  labelerFile.writeAsStringSync(updatedContent);
  log('Labels updated successfully.');
}

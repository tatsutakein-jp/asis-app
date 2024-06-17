import 'package:core_model/build_config.dart';
import 'package:feature_settings/src/gen/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ビルド設定タイルのコンテンツ
final class BuildConfigTileContent extends ConsumerWidget {
  const BuildConfigTileContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final buildConfig = ref.watch(buildConfigProvider);

    return Column(
      children: [
        // アプリバージョン
        const Text('アプリバージョン'),
        if (kIsWeb)
          Text(buildConfig.version)
        else
          Text('${buildConfig.version} (${buildConfig.buildNumber})'),

        // パッケージ名
        if (kDebugMode)
          Text(buildConfig.packageName)
        else
          const SizedBox.shrink(),

        // インストールストア
        if (buildConfig.installerStore != null)
          Text('It was installed with ${buildConfig.installerStore}.')
        else
          const SizedBox.shrink(),
      ],
    );
  }
}

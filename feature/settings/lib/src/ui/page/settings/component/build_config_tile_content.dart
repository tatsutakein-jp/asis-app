import 'package:core_model/build_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final class BuildConfigTileContent extends StatelessWidget {
  const BuildConfigTileContent({
    required BuildConfig buildConfig,
    super.key,
  }) : _buildConfig = buildConfig;

  final BuildConfig _buildConfig;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          // アプリバージョン
          const Text('アプリバージョン'),
          if (kIsWeb)
            Text(_buildConfig.version)
          else
            Text('${_buildConfig.version} (${_buildConfig.buildNumber})'),

          // パッケージ名
          if (kDebugMode)
            Text(_buildConfig.packageName)
          else
            const SizedBox.shrink(),

          // インストールストア
          if (_buildConfig.installerStore != null)
            Text('It was installed with ${_buildConfig.installerStore}.')
          else
            const SizedBox.shrink(),
        ],
      );
}

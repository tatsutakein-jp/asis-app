import 'package:core_designsystem/component.dart';
import 'package:core_domain/auth_use_case.dart';
import 'package:core_model/build_config.dart';
import 'package:feature_settings/src/ui/page/settings/component/index.dart';
import 'package:feature_settings/src/ui/page/settings/component/theme_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    required VoidCallback onTapThemeSetting,
    required VoidCallback onTapOpenSourceLicense,
    required VoidCallback onSignOutSuccess,
    super.key,
  })  : _onTapThemeSetting = onTapThemeSetting,
        _onTapOpenSourceLicense = onTapOpenSourceLicense,
        _onSignOutSuccess = onSignOutSuccess;

  final VoidCallback _onTapThemeSetting;
  final VoidCallback _onTapOpenSourceLicense;
  final VoidCallback _onSignOutSuccess;

  static const buildConfigKey = Key('buildConfig');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buildConfig = ref.watch(buildConfigProvider);

    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        primary: true,
        children: [
          ThemeListTile(
            onTap: _onTapThemeSetting,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: const Text('オープンソースライセンス'),
            onTap: _onTapOpenSourceLicense,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: const Text('サインアウト'),
            onTap: () async {
              await ref.read(signOutUseCaseProvider.future);
              _onSignOutSuccess();
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            title: BuildConfigTileContent(
              buildConfig: buildConfig,
              key: buildConfigKey,
            ),
          ),
        ],
      ),
    );
  }
}

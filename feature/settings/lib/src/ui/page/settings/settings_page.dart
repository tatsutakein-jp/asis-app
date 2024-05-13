import 'package:core_designsystem/component.dart';
import 'package:core_model/build_config.dart';
import 'package:feature_settings/src/ui/page/settings/component/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef OnTapOpenSourceLicenseCallback = void Function(BuildContext context);

final class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    required OnTapOpenSourceLicenseCallback onTapOpenSourceLicense,
    super.key,
  }) : _onTapOpenSourceLicense = onTapOpenSourceLicense;

  final OnTapOpenSourceLicenseCallback _onTapOpenSourceLicense;

  static const buildConfigKey = Key('buildConfig');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buildConfig = ref.watch(buildConfigProvider);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        primary: true,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: const Text('オープンソースライセンス'),
            onTap: () => _onTapOpenSourceLicense(context),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(
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

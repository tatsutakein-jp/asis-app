import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

typedef OnTapOpenSourceLicenseCallback = void Function(BuildContext context);

final class SettingsPage extends StatelessWidget {
  const SettingsPage({
    required OnTapOpenSourceLicenseCallback onTapOpenSourceLicense,
    super.key,
  }) : _onTapOpenSourceLicense = onTapOpenSourceLicense;

  final OnTapOpenSourceLicenseCallback _onTapOpenSourceLicense;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AppBar(
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
        ],
      ),
    );
  }
}

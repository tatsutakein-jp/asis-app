import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

final class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Settings Page'),
          ],
        ),
      ),
    );
  }
}

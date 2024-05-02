import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

typedef OnTappedButtonCallback = void Function(BuildContext context);

final class AuthPage extends StatelessWidget {
  const AuthPage({
    required OnTappedButtonCallback onTappedButton,
    super.key,
  }) : _onTappedButton = onTappedButton;

  final OnTappedButtonCallback _onTappedButton;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Auth'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => _onTappedButton(context),
              child: const Text('Auth Page'),
            ),
          ],
        ),
      ),
    );
  }
}

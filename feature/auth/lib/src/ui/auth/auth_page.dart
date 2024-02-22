import 'package:core_designsystem/component.dart';
import 'package:feature_auth/src/ui/auth/auth_route_args.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) {
                return TextButton(
                  onPressed: ref.read(onTappedButtonProvider),
                  child: const Text('Auth Page'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

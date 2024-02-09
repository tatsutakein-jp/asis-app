import 'package:flutter/material.dart';

final class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Auth Page'),
          ],
        ),
      ),
    );
  }
}

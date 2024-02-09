import 'package:flutter/material.dart';

final class QuestPage extends StatelessWidget {
  const QuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Quest Page'),
          ],
        ),
      ),
    );
  }
}

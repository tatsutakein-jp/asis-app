import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

/// ホームページ
final class HomePage extends StatelessWidget {
  const HomePage({
    required void Function() onTapNotification,
    super.key,
  }) : _onTapNotification = onTapNotification;

  final VoidCallback _onTapNotification;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _onTapNotification,
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Home Page'),
          ],
        ),
      ),
    );
  }
}

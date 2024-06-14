import 'package:core_designsystem/component.dart';
import 'package:feature_home/src/ui/page/home/component/quest_overview_section.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestOverviewSection(
                onQuickAddButtonPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

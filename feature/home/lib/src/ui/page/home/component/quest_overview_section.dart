import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト内容
final class QuestOverviewSection extends HookConsumerWidget {
  const QuestOverviewSection({
    required void Function() onQuickAddButtonPressed,
    super.key,
  }) : _onQuickAddButtonPressed = onQuickAddButtonPressed;

  final VoidCallback _onQuickAddButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Quest Overview',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _StatCard(title: 'Total Quests', count: '50'),
              ),
              Gap(16),
              Expanded(
                child: _StatCard(title: 'Quests Completed', count: '20'),
              ),
            ],
          ),
          const Gap(16),
          const SizedBox(
            width: double.infinity,
            child: _StatCard(title: 'Pending Quests', count: '30'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _onQuickAddButtonPressed,
                child: const Text('Quick Add Quest'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.count,
  });

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            count,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

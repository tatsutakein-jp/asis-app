import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト内容
final class QuestContent extends HookConsumerWidget {
  const QuestContent({
    required QuestId questId,
    super.key,
  }) : _questId = questId;

  final QuestId _questId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = questStreamByIdUseCaseProvider(id: _questId);
    final quest = ref.watch(provider);

    return quest.when(
      data: (quest) {
        if (quest == null) {
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...[
                Text(
                  quest.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(quest.description),
                Text(quest.body),
              ].expand(
                (element) => [
                  element,
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

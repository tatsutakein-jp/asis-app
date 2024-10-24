import 'package:core_designsystem/component.dart';
import 'package:core_domain/sync_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:feature_home/src/ui/page/home/component/quest_overview_section.dart';
import 'package:feature_home/src/ui/page/home/component/recent_quest_list_section.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ホームページ
final class HomePage extends ConsumerWidget {
  const HomePage({
    required VoidCallback onTapNotification,
    required VoidCallback onQuickAddButtonPressed,
    required void Function(Quest quest) onTapQuestListItem,
    required VoidCallback onMoreButtonPressed,
    super.key,
  })  : _onTapNotification = onTapNotification,
        _onQuickAddButtonPressed = onQuickAddButtonPressed,
        _onTapQuestListItem = onTapQuestListItem,
        _onMoreButtonPressed = onMoreButtonPressed;

  final VoidCallback _onTapNotification;
  final VoidCallback _onQuickAddButtonPressed;
  final void Function(Quest quest) _onTapQuestListItem;
  final VoidCallback _onMoreButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(
        title: Text(l10n.homeAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _onTapNotification,
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.read(syncUseCaseProvider);
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...[
                  QuestOverviewSection(
                    onQuickAddButtonPressed: _onQuickAddButtonPressed,
                  ),
                  RecentQuestListSection(
                    onTapQuestListItem: _onTapQuestListItem,
                    onMoreButtonPressed: _onMoreButtonPressed,
                  ),
                ].expand(
                  (widget) => [
                    widget,
                    const Gap(24),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

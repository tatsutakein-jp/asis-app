import 'package:core_domain/user_settings_use_case.dart';
import 'package:core_model/theme.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class ThemeListTile extends ConsumerWidget {
  const ThemeListTile({
    required void Function() onTap,
    super.key,
  }) : _onTap = onTap;

  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeStreamUseCaseProvider);

    return ListTile(
      title: const Text('テーマ設定'),
      subtitle: Text(
        '設定中のテーマ: ${switch (theme.valueOrNull ?? Theme.system) {
          Theme.system => 'システム',
          Theme.light => 'ライトモード',
          Theme.dark => 'ダークモード',
        }}',
      ),
      onTap: _onTap,
    );
  }
}

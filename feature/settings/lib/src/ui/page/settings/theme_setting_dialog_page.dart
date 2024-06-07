import 'package:core_domain/user_settings_use_case.dart';
import 'package:core_model/theme.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// テーマ設定ダイアログのページ
final class ThemeSettingDialogPage extends HookConsumerWidget {
  const ThemeSettingDialogPage({
    required void Function() onTapPositive,
    required void Function() onTapNegative,
    super.key,
  })  : _onTapPositive = onTapPositive,
        _onTapNegative = onTapNegative;

  final VoidCallback _onTapPositive;
  final VoidCallback _onTapNegative;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTheme = useState(ref.watch(fetchThemeUseCaseProvider));

    return AlertDialog(
      title: const Text('テーマ設定'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...Theme.values.map(
            (e) => RadioListTile<Theme>(
              value: e,
              groupValue: selectedTheme.value,
              onChanged: (newTheme) {
                selectedTheme.value = newTheme!;
              },
              title: Text(
                switch (e) {
                  Theme.system => 'システム',
                  Theme.light => 'ライトモード',
                  Theme.dark => 'ダークモード',
                },
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _onTapNegative,
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () async {
            await ref.read(
              updateThemeUseCaseProvider(theme: selectedTheme.value),
            );
            _onTapPositive();
          },
          child: const Text('OK'),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}

extension ExpandButton on ButtonStyleButton {
  Widget get expand => SizedBox(width: double.infinity, child: this);
}

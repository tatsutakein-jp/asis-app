import 'package:core_designsystem/component.dart';
import 'package:core_domain/auth_use_case.dart';
import 'package:feature_auth/src/ui/page/auth/components/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef OnTappedButtonCallback = void Function(BuildContext context);

final class AuthPage extends HookConsumerWidget {
  const AuthPage({
    required OnTappedButtonCallback onTappedButton,
    super.key,
  }) : _onTappedButton = onTappedButton;

  final OnTappedButtonCallback _onTappedButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final emailValue = useValueListenable(emailController);

    final passwordController = useTextEditingController();
    final passwordValue = useValueListenable(passwordController);

    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('サインイン'),
      ),
      body: SignInForm(
        emailController: emailController,
        passwordController: passwordController,
        onTappedButton: () async {
          // TODO: エラーハンドリング
          await ref.read(
            signInUseCaseProvider(
              email: emailValue.text,
              password: passwordValue.text,
            ).future,
          );
          _onTappedButton(context);
        },
      ),
    );
  }
}

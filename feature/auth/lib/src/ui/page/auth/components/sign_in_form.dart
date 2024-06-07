import 'package:core_designsystem/component.dart';
import 'package:core_domain/auth_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SignInForm extends HookConsumerWidget {
  const SignInForm({
    required VoidCallback onLoginSuccess,
    super.key,
  }) : _onLoginSuccess = onLoginSuccess;

  final VoidCallback _onLoginSuccess;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final emailValue = useValueListenable(emailController);

    final passwordController = useTextEditingController();
    final passwordValue = useValueListenable(passwordController);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Form(
      key: formKey,
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: AutofillGroup(
            child: Column(
              children: [
                ...[
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: 'welcome@asis.quest',
                      labelText: 'Email',
                    ),
                    autofillHints: const [AutofillHints.email],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Emailを入力してください';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return '有効なメールアドレスを入力してください';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    autofillHints: const [AutofillHints.password],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'パスワードを入力してください';
                      }
                      if (value.length < 6) {
                        return 'パスワードは少なくとも6文字以上である必要があります';
                      }
                      return null;
                    },
                  ),

                  // サインイン
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        // TODO: エラーハンドリング
                        await ref.read(
                          signInUseCaseProvider(
                            email: emailValue.text,
                            password: passwordValue.text,
                          ),
                        );
                        _onLoginSuccess();
                      },
                      child: const Text('サインイン'),
                    ),
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

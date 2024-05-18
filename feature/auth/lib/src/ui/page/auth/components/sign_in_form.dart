import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

final class SignInForm extends StatelessWidget {
  const SignInForm({
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required VoidCallback onTappedButton,
    super.key,
  })  : _onTappedButton = onTappedButton,
        _emailController = emailController,
        _passwordController = passwordController;

  final VoidCallback _onTappedButton;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: AutofillGroup(
            child: Column(
              children: [
                ...[
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'welcome@asis.quest',
                      labelText: 'Email',
                    ),
                    autofillHints: [AutofillHints.email],
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    autofillHints: [AutofillHints.password],
                  ),

                  // サインイン
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _onTappedButton,
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

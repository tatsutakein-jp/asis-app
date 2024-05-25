import 'package:core_designsystem/component.dart';
import 'package:feature_auth/src/ui/page/auth/components/sign_in_form.dart';
import 'package:flutter/material.dart';

/// 認証ページ
final class AuthPage extends StatelessWidget {
  const AuthPage({
    required VoidCallback onLoginSuccess,
    super.key,
  }) : _onLoginSuccess = onLoginSuccess;

  final VoidCallback _onLoginSuccess;

  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);

    return GestureDetector(
      onTap: () {
        if (!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
      child: AsisScaffold(
        appBar: const AsisAppBar(
          title: Text('サインイン'),
        ),
        body: SignInForm(
          onLoginSuccess: _onLoginSuccess,
        ),
      ),
    );
  }
}

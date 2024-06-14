import 'dart:ui';

import 'package:feature_auth/src/ui/page/auth/components/sign_in_form.dart';
import 'package:feature_auth/src/ui/page/auth/components/video_background_view.dart';
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
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('サインイン'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: const HeroBackground(),
            ),
            Positioned.fill(
              child: SafeArea(
                child: SignInForm(
                  onLoginSuccess: _onLoginSuccess,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:feature_auth/feature_auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'AuthPage',
  type: AuthPage,
  path: '[Pages]',
)
AuthPage authPageUseCase(BuildContext context) {
  return AuthPage();
}

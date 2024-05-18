import 'package:core_authenticator/authenticator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_out_use_case.g.dart';

/// サインアウトする ユースケース
@riverpod
Future<void> signOutUseCase(SignOutUseCaseRef ref) async =>
    ref.watch(authenticatorProvider).signOut();

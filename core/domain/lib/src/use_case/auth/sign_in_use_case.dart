import 'package:core_authenticator/authenticator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_use_case.g.dart';

/// サインインする ユースケース
@riverpod
Raw<Future<void>> signInUseCase(
  SignInUseCaseRef ref, {
  required String email,
  required String password,
}) async =>
    ref.watch(authenticatorProvider).signInWithEmailAndPassword(
          email: email,
          password: password,
        );

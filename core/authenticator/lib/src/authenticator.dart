import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authenticator.g.dart';

/// Authenticator instance
@Riverpod(keepAlive: true)
Authenticator authenticator(AuthenticatorRef ref) {
  throw UnimplementedError('authenticator');
}

abstract interface class Authenticator {
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

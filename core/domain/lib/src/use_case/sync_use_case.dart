import 'package:core_data/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sync_use_case.g.dart';

/// 同期するユースケース
@riverpod
Future<void> syncUseCase(
  SyncUseCaseRef ref,
) async {
  await Future.wait([
    ref.watch(questRepositoryProvider).sync(),
  ]);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questListStreamUseCaseHash() =>
    r'3e9d92c2bcb82f83ab2acfc774759825da199a67';

/// クエスト一覧を取得する ユースケース
///
/// Copied from [QuestListStreamUseCase].
@ProviderFor(QuestListStreamUseCase)
final questListStreamUseCaseProvider = AutoDisposeStreamNotifierProvider<
    QuestListStreamUseCase, List<Quest>>.internal(
  QuestListStreamUseCase.new,
  name: r'questListStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$questListStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$QuestListStreamUseCase = AutoDisposeStreamNotifier<List<Quest>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

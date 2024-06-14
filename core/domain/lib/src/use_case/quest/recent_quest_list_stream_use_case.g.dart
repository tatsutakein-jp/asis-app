// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_quest_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentQuestListStreamUseCaseHash() =>
    r'746c580bd19c2f7a5fed0b0c97e46483ac331023';

/// 直近のクエスト一覧を取得する ユースケース
///
/// Copied from [recentQuestListStreamUseCase].
@ProviderFor(recentQuestListStreamUseCase)
final recentQuestListStreamUseCaseProvider =
    AutoDisposeStreamProvider<List<Quest>>.internal(
  recentQuestListStreamUseCase,
  name: r'recentQuestListStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentQuestListStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecentQuestListStreamUseCaseRef
    = AutoDisposeStreamProviderRef<List<Quest>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

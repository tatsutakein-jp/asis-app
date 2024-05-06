// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_detail_page_state_machine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questDetailPageStateMachineHash() =>
    r'7d7d81f6dcf7bc27ec9f1cb299b52268dce9cf72';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$QuestDetailPageStateMachine
    extends BuildlessAutoDisposeNotifier<QuestDetailPageState> {
  late final String questId;

  QuestDetailPageState build({
    required String questId,
  });
}

/// See also [QuestDetailPageStateMachine].
@ProviderFor(QuestDetailPageStateMachine)
const questDetailPageStateMachineProvider = QuestDetailPageStateMachineFamily();

/// See also [QuestDetailPageStateMachine].
class QuestDetailPageStateMachineFamily extends Family<QuestDetailPageState> {
  /// See also [QuestDetailPageStateMachine].
  const QuestDetailPageStateMachineFamily();

  /// See also [QuestDetailPageStateMachine].
  QuestDetailPageStateMachineProvider call({
    required String questId,
  }) {
    return QuestDetailPageStateMachineProvider(
      questId: questId,
    );
  }

  @override
  QuestDetailPageStateMachineProvider getProviderOverride(
    covariant QuestDetailPageStateMachineProvider provider,
  ) {
    return call(
      questId: provider.questId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'questDetailPageStateMachineProvider';
}

/// See also [QuestDetailPageStateMachine].
class QuestDetailPageStateMachineProvider
    extends AutoDisposeNotifierProviderImpl<QuestDetailPageStateMachine,
        QuestDetailPageState> {
  /// See also [QuestDetailPageStateMachine].
  QuestDetailPageStateMachineProvider({
    required String questId,
  }) : this._internal(
          () => QuestDetailPageStateMachine()..questId = questId,
          from: questDetailPageStateMachineProvider,
          name: r'questDetailPageStateMachineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questDetailPageStateMachineHash,
          dependencies: QuestDetailPageStateMachineFamily._dependencies,
          allTransitiveDependencies:
              QuestDetailPageStateMachineFamily._allTransitiveDependencies,
          questId: questId,
        );

  QuestDetailPageStateMachineProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.questId,
  }) : super.internal();

  final String questId;

  @override
  QuestDetailPageState runNotifierBuild(
    covariant QuestDetailPageStateMachine notifier,
  ) {
    return notifier.build(
      questId: questId,
    );
  }

  @override
  Override overrideWith(QuestDetailPageStateMachine Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestDetailPageStateMachineProvider._internal(
        () => create()..questId = questId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        questId: questId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<QuestDetailPageStateMachine,
      QuestDetailPageState> createElement() {
    return _QuestDetailPageStateMachineProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestDetailPageStateMachineProvider &&
        other.questId == questId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, questId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QuestDetailPageStateMachineRef
    on AutoDisposeNotifierProviderRef<QuestDetailPageState> {
  /// The parameter `questId` of this provider.
  String get questId;
}

class _QuestDetailPageStateMachineProviderElement
    extends AutoDisposeNotifierProviderElement<QuestDetailPageStateMachine,
        QuestDetailPageState> with QuestDetailPageStateMachineRef {
  _QuestDetailPageStateMachineProviderElement(super.provider);

  @override
  String get questId => (origin as QuestDetailPageStateMachineProvider).questId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

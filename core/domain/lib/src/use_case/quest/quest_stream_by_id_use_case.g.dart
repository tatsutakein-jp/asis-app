// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_stream_by_id_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questStreamByIdUseCaseHash() =>
    r'b803a41d0174f550acb21fc700afc42979cc677d';

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

abstract class _$QuestStreamByIdUseCase
    extends BuildlessAutoDisposeStreamNotifier<Quest?> {
  late final String id;

  Stream<Quest?> build({
    required String id,
  });
}

/// 該当のクエストを取得する ユースケース
///
/// Copied from [QuestStreamByIdUseCase].
@ProviderFor(QuestStreamByIdUseCase)
const questStreamByIdUseCaseProvider = QuestStreamByIdUseCaseFamily();

/// 該当のクエストを取得する ユースケース
///
/// Copied from [QuestStreamByIdUseCase].
class QuestStreamByIdUseCaseFamily extends Family<AsyncValue<Quest?>> {
  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [QuestStreamByIdUseCase].
  const QuestStreamByIdUseCaseFamily();

  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [QuestStreamByIdUseCase].
  QuestStreamByIdUseCaseProvider call({
    required String id,
  }) {
    return QuestStreamByIdUseCaseProvider(
      id: id,
    );
  }

  @override
  QuestStreamByIdUseCaseProvider getProviderOverride(
    covariant QuestStreamByIdUseCaseProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'questStreamByIdUseCaseProvider';
}

/// 該当のクエストを取得する ユースケース
///
/// Copied from [QuestStreamByIdUseCase].
class QuestStreamByIdUseCaseProvider
    extends AutoDisposeStreamNotifierProviderImpl<QuestStreamByIdUseCase,
        Quest?> {
  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [QuestStreamByIdUseCase].
  QuestStreamByIdUseCaseProvider({
    required String id,
  }) : this._internal(
          () => QuestStreamByIdUseCase()..id = id,
          from: questStreamByIdUseCaseProvider,
          name: r'questStreamByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questStreamByIdUseCaseHash,
          dependencies: QuestStreamByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              QuestStreamByIdUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  QuestStreamByIdUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Stream<Quest?> runNotifierBuild(
    covariant QuestStreamByIdUseCase notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(QuestStreamByIdUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestStreamByIdUseCaseProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<QuestStreamByIdUseCase, Quest?>
      createElement() {
    return _QuestStreamByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestStreamByIdUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QuestStreamByIdUseCaseRef
    on AutoDisposeStreamNotifierProviderRef<Quest?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _QuestStreamByIdUseCaseProviderElement
    extends AutoDisposeStreamNotifierProviderElement<QuestStreamByIdUseCase,
        Quest?> with QuestStreamByIdUseCaseRef {
  _QuestStreamByIdUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as QuestStreamByIdUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

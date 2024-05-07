// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_quest_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addQuestUseCaseHash() => r'7b608aa709a533daff5982adeec33807c58d9cb4';

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

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
@ProviderFor(addQuestUseCase)
const addQuestUseCaseProvider = AddQuestUseCaseFamily();

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
class AddQuestUseCaseFamily extends Family<AsyncValue<void>> {
  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  const AddQuestUseCaseFamily();

  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  AddQuestUseCaseProvider call({
    required Quest quest,
  }) {
    return AddQuestUseCaseProvider(
      quest: quest,
    );
  }

  @override
  AddQuestUseCaseProvider getProviderOverride(
    covariant AddQuestUseCaseProvider provider,
  ) {
    return call(
      quest: provider.quest,
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
  String? get name => r'addQuestUseCaseProvider';
}

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
class AddQuestUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  AddQuestUseCaseProvider({
    required Quest quest,
  }) : this._internal(
          (ref) => addQuestUseCase(
            ref as AddQuestUseCaseRef,
            quest: quest,
          ),
          from: addQuestUseCaseProvider,
          name: r'addQuestUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addQuestUseCaseHash,
          dependencies: AddQuestUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AddQuestUseCaseFamily._allTransitiveDependencies,
          quest: quest,
        );

  AddQuestUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.quest,
  }) : super.internal();

  final Quest quest;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddQuestUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddQuestUseCaseProvider._internal(
        (ref) => create(ref as AddQuestUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        quest: quest,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddQuestUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddQuestUseCaseProvider && other.quest == quest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quest.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddQuestUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `quest` of this provider.
  Quest get quest;
}

class _AddQuestUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddQuestUseCaseRef {
  _AddQuestUseCaseProviderElement(super.provider);

  @override
  Quest get quest => (origin as AddQuestUseCaseProvider).quest;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

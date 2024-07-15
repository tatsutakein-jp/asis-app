// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toaster.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toastListKeyHash() => r'ad318506b77a3b544c6415829b82a45fa7949e95';

/// See also [toastListKey].
@ProviderFor(toastListKey)
final toastListKeyProvider = Provider<GlobalKey<AnimatedListState>>.internal(
  toastListKey,
  name: r'toastListKeyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toastListKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ToastListKeyRef = ProviderRef<GlobalKey<AnimatedListState>>;
String _$toasterHash() => r'246e5af54027bdba0015ad996bc4c5da55e32d6a';

/// See also [Toaster].
@ProviderFor(Toaster)
final toasterProvider =
    AutoDisposeNotifierProvider<Toaster, List<ToastData>>.internal(
  Toaster.new,
  name: r'toasterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toasterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Toaster = AutoDisposeNotifier<List<ToastData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

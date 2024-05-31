// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuildConfig {
  String get appName => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get buildSignature => throw _privateConstructorUsedError;
  Flavor get flavor => throw _privateConstructorUsedError;
  String? get installerStore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuildConfigCopyWith<BuildConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildConfigCopyWith<$Res> {
  factory $BuildConfigCopyWith(
          BuildConfig value, $Res Function(BuildConfig) then) =
      _$BuildConfigCopyWithImpl<$Res, BuildConfig>;
  @useResult
  $Res call(
      {String appName,
      String packageName,
      String version,
      String buildNumber,
      String buildSignature,
      Flavor flavor,
      String? installerStore});
}

/// @nodoc
class _$BuildConfigCopyWithImpl<$Res, $Val extends BuildConfig>
    implements $BuildConfigCopyWith<$Res> {
  _$BuildConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? flavor = null,
    Object? installerStore = freezed,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildConfigImplCopyWith<$Res>
    implements $BuildConfigCopyWith<$Res> {
  factory _$$BuildConfigImplCopyWith(
          _$BuildConfigImpl value, $Res Function(_$BuildConfigImpl) then) =
      __$$BuildConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName,
      String packageName,
      String version,
      String buildNumber,
      String buildSignature,
      Flavor flavor,
      String? installerStore});
}

/// @nodoc
class __$$BuildConfigImplCopyWithImpl<$Res>
    extends _$BuildConfigCopyWithImpl<$Res, _$BuildConfigImpl>
    implements _$$BuildConfigImplCopyWith<$Res> {
  __$$BuildConfigImplCopyWithImpl(
      _$BuildConfigImpl _value, $Res Function(_$BuildConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? flavor = null,
    Object? installerStore = freezed,
  }) {
    return _then(_$BuildConfigImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BuildConfigImpl implements _BuildConfig {
  const _$BuildConfigImpl(
      {required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber,
      required this.buildSignature,
      required this.flavor,
      required this.installerStore});

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final String buildSignature;
  @override
  final Flavor flavor;
  @override
  final String? installerStore;

  @override
  String toString() {
    return 'BuildConfig(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, flavor: $flavor, installerStore: $installerStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildConfigImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appName, packageName, version,
      buildNumber, buildSignature, flavor, installerStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildConfigImplCopyWith<_$BuildConfigImpl> get copyWith =>
      __$$BuildConfigImplCopyWithImpl<_$BuildConfigImpl>(this, _$identity);
}

abstract class _BuildConfig implements BuildConfig {
  const factory _BuildConfig(
      {required final String appName,
      required final String packageName,
      required final String version,
      required final String buildNumber,
      required final String buildSignature,
      required final Flavor flavor,
      required final String? installerStore}) = _$BuildConfigImpl;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String get buildSignature;
  @override
  Flavor get flavor;
  @override
  String? get installerStore;
  @override
  @JsonKey(ignore: true)
  _$$BuildConfigImplCopyWith<_$BuildConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

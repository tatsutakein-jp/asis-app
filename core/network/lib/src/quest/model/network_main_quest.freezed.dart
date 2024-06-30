// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_main_quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkMainQuest {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkMainQuestCopyWith<NetworkMainQuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkMainQuestCopyWith<$Res> {
  factory $NetworkMainQuestCopyWith(
          NetworkMainQuest value, $Res Function(NetworkMainQuest) then) =
      _$NetworkMainQuestCopyWithImpl<$Res, NetworkMainQuest>;
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class _$NetworkMainQuestCopyWithImpl<$Res, $Val extends NetworkMainQuest>
    implements $NetworkMainQuestCopyWith<$Res> {
  _$NetworkMainQuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkMainQuestImplCopyWith<$Res>
    implements $NetworkMainQuestCopyWith<$Res> {
  factory _$$NetworkMainQuestImplCopyWith(_$NetworkMainQuestImpl value,
          $Res Function(_$NetworkMainQuestImpl) then) =
      __$$NetworkMainQuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class __$$NetworkMainQuestImplCopyWithImpl<$Res>
    extends _$NetworkMainQuestCopyWithImpl<$Res, _$NetworkMainQuestImpl>
    implements _$$NetworkMainQuestImplCopyWith<$Res> {
  __$$NetworkMainQuestImplCopyWithImpl(_$NetworkMainQuestImpl _value,
      $Res Function(_$NetworkMainQuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$NetworkMainQuestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkMainQuestImpl implements _NetworkMainQuest {
  const _$NetworkMainQuestImpl(
      {required this.id, required this.title, required this.description});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'NetworkMainQuest(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkMainQuestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkMainQuestImplCopyWith<_$NetworkMainQuestImpl> get copyWith =>
      __$$NetworkMainQuestImplCopyWithImpl<_$NetworkMainQuestImpl>(
          this, _$identity);
}

abstract class _NetworkMainQuest implements NetworkMainQuest {
  const factory _NetworkMainQuest(
      {required final String id,
      required final String title,
      required final String description}) = _$NetworkMainQuestImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$NetworkMainQuestImplCopyWith<_$NetworkMainQuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

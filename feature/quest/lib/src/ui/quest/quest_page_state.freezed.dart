// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestPageState {
  Stream<List<Quest>> get quests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestPageStateCopyWith<QuestPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestPageStateCopyWith<$Res> {
  factory $QuestPageStateCopyWith(
          QuestPageState value, $Res Function(QuestPageState) then) =
      _$QuestPageStateCopyWithImpl<$Res, QuestPageState>;
  @useResult
  $Res call({Stream<List<Quest>> quests});
}

/// @nodoc
class _$QuestPageStateCopyWithImpl<$Res, $Val extends QuestPageState>
    implements $QuestPageStateCopyWith<$Res> {
  _$QuestPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quests = null,
  }) {
    return _then(_value.copyWith(
      quests: null == quests
          ? _value.quests
          : quests // ignore: cast_nullable_to_non_nullable
              as Stream<List<Quest>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestPageStateImplCopyWith<$Res>
    implements $QuestPageStateCopyWith<$Res> {
  factory _$$QuestPageStateImplCopyWith(_$QuestPageStateImpl value,
          $Res Function(_$QuestPageStateImpl) then) =
      __$$QuestPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Stream<List<Quest>> quests});
}

/// @nodoc
class __$$QuestPageStateImplCopyWithImpl<$Res>
    extends _$QuestPageStateCopyWithImpl<$Res, _$QuestPageStateImpl>
    implements _$$QuestPageStateImplCopyWith<$Res> {
  __$$QuestPageStateImplCopyWithImpl(
      _$QuestPageStateImpl _value, $Res Function(_$QuestPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quests = null,
  }) {
    return _then(_$QuestPageStateImpl(
      quests: null == quests
          ? _value.quests
          : quests // ignore: cast_nullable_to_non_nullable
              as Stream<List<Quest>>,
    ));
  }
}

/// @nodoc

class _$QuestPageStateImpl implements _QuestPageState {
  _$QuestPageStateImpl({required this.quests});

  @override
  final Stream<List<Quest>> quests;

  @override
  String toString() {
    return 'QuestPageState(quests: $quests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestPageStateImpl &&
            (identical(other.quests, quests) || other.quests == quests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestPageStateImplCopyWith<_$QuestPageStateImpl> get copyWith =>
      __$$QuestPageStateImplCopyWithImpl<_$QuestPageStateImpl>(
          this, _$identity);
}

abstract class _QuestPageState implements QuestPageState {
  factory _QuestPageState({required final Stream<List<Quest>> quests}) =
      _$QuestPageStateImpl;

  @override
  Stream<List<Quest>> get quests;
  @override
  @JsonKey(ignore: true)
  _$$QuestPageStateImplCopyWith<_$QuestPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

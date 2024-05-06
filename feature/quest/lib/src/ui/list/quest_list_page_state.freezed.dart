// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestListPageState {
  AsyncValue<List<Quest>> get quests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestListPageStateCopyWith<QuestListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestListPageStateCopyWith<$Res> {
  factory $QuestListPageStateCopyWith(
          QuestListPageState value, $Res Function(QuestListPageState) then) =
      _$QuestListPageStateCopyWithImpl<$Res, QuestListPageState>;
  @useResult
  $Res call({AsyncValue<List<Quest>> quests});
}

/// @nodoc
class _$QuestListPageStateCopyWithImpl<$Res, $Val extends QuestListPageState>
    implements $QuestListPageStateCopyWith<$Res> {
  _$QuestListPageStateCopyWithImpl(this._value, this._then);

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
              as AsyncValue<List<Quest>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestListPageStateImplCopyWith<$Res>
    implements $QuestListPageStateCopyWith<$Res> {
  factory _$$QuestListPageStateImplCopyWith(_$QuestListPageStateImpl value,
          $Res Function(_$QuestListPageStateImpl) then) =
      __$$QuestListPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Quest>> quests});
}

/// @nodoc
class __$$QuestListPageStateImplCopyWithImpl<$Res>
    extends _$QuestListPageStateCopyWithImpl<$Res, _$QuestListPageStateImpl>
    implements _$$QuestListPageStateImplCopyWith<$Res> {
  __$$QuestListPageStateImplCopyWithImpl(_$QuestListPageStateImpl _value,
      $Res Function(_$QuestListPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quests = null,
  }) {
    return _then(_$QuestListPageStateImpl(
      quests: null == quests
          ? _value.quests
          : quests // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quest>>,
    ));
  }
}

/// @nodoc

class _$QuestListPageStateImpl implements _QuestListPageState {
  _$QuestListPageStateImpl({required this.quests});

  @override
  final AsyncValue<List<Quest>> quests;

  @override
  String toString() {
    return 'QuestListPageState(quests: $quests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestListPageStateImpl &&
            (identical(other.quests, quests) || other.quests == quests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestListPageStateImplCopyWith<_$QuestListPageStateImpl> get copyWith =>
      __$$QuestListPageStateImplCopyWithImpl<_$QuestListPageStateImpl>(
          this, _$identity);
}

abstract class _QuestListPageState implements QuestListPageState {
  factory _QuestListPageState({required final AsyncValue<List<Quest>> quests}) =
      _$QuestListPageStateImpl;

  @override
  AsyncValue<List<Quest>> get quests;
  @override
  @JsonKey(ignore: true)
  _$$QuestListPageStateImplCopyWith<_$QuestListPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

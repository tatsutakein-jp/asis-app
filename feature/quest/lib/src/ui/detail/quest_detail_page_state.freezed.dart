// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestDetailPageState {
  AsyncValue<Quest> get quest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestDetailPageStateCopyWith<QuestDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestDetailPageStateCopyWith<$Res> {
  factory $QuestDetailPageStateCopyWith(QuestDetailPageState value,
          $Res Function(QuestDetailPageState) then) =
      _$QuestDetailPageStateCopyWithImpl<$Res, QuestDetailPageState>;
  @useResult
  $Res call({AsyncValue<Quest> quest});
}

/// @nodoc
class _$QuestDetailPageStateCopyWithImpl<$Res,
        $Val extends QuestDetailPageState>
    implements $QuestDetailPageStateCopyWith<$Res> {
  _$QuestDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quest = null,
  }) {
    return _then(_value.copyWith(
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Quest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestDetailPageStateImplCopyWith<$Res>
    implements $QuestDetailPageStateCopyWith<$Res> {
  factory _$$QuestDetailPageStateImplCopyWith(_$QuestDetailPageStateImpl value,
          $Res Function(_$QuestDetailPageStateImpl) then) =
      __$$QuestDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<Quest> quest});
}

/// @nodoc
class __$$QuestDetailPageStateImplCopyWithImpl<$Res>
    extends _$QuestDetailPageStateCopyWithImpl<$Res, _$QuestDetailPageStateImpl>
    implements _$$QuestDetailPageStateImplCopyWith<$Res> {
  __$$QuestDetailPageStateImplCopyWithImpl(_$QuestDetailPageStateImpl _value,
      $Res Function(_$QuestDetailPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quest = null,
  }) {
    return _then(_$QuestDetailPageStateImpl(
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Quest>,
    ));
  }
}

/// @nodoc

class _$QuestDetailPageStateImpl implements _QuestDetailPageState {
  _$QuestDetailPageStateImpl({required this.quest});

  @override
  final AsyncValue<Quest> quest;

  @override
  String toString() {
    return 'QuestDetailPageState(quest: $quest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestDetailPageStateImpl &&
            (identical(other.quest, quest) || other.quest == quest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestDetailPageStateImplCopyWith<_$QuestDetailPageStateImpl>
      get copyWith =>
          __$$QuestDetailPageStateImplCopyWithImpl<_$QuestDetailPageStateImpl>(
              this, _$identity);
}

abstract class _QuestDetailPageState implements QuestDetailPageState {
  factory _QuestDetailPageState({required final AsyncValue<Quest> quest}) =
      _$QuestDetailPageStateImpl;

  @override
  AsyncValue<Quest> get quest;
  @override
  @JsonKey(ignore: true)
  _$$QuestDetailPageStateImplCopyWith<_$QuestDetailPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

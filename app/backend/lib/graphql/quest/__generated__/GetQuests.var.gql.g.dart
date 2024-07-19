// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetQuests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetQuestsVars> _$gGetQuestsVarsSerializer =
    new _$GGetQuestsVarsSerializer();

class _$GGetQuestsVarsSerializer
    implements StructuredSerializer<GGetQuestsVars> {
  @override
  final Iterable<Type> types = const [GGetQuestsVars, _$GGetQuestsVars];
  @override
  final String wireName = 'GGetQuestsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetQuestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetQuestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetQuestsVarsBuilder().build();
  }
}

class _$GGetQuestsVars extends GGetQuestsVars {
  factory _$GGetQuestsVars([void Function(GGetQuestsVarsBuilder)? updates]) =>
      (new GGetQuestsVarsBuilder()..update(updates))._build();

  _$GGetQuestsVars._() : super._();

  @override
  GGetQuestsVars rebuild(void Function(GGetQuestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetQuestsVarsBuilder toBuilder() =>
      new GGetQuestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetQuestsVars;
  }

  @override
  int get hashCode {
    return 52352633;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetQuestsVars').toString();
  }
}

class GGetQuestsVarsBuilder
    implements Builder<GGetQuestsVars, GGetQuestsVarsBuilder> {
  _$GGetQuestsVars? _$v;

  GGetQuestsVarsBuilder();

  @override
  void replace(GGetQuestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetQuestsVars;
  }

  @override
  void update(void Function(GGetQuestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetQuestsVars build() => _build();

  _$GGetQuestsVars _build() {
    final _$result = _$v ?? new _$GGetQuestsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:core_network_ferry/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'GetQuests.var.gql.g.dart';

abstract class GGetQuestsVars
    implements Built<GGetQuestsVars, GGetQuestsVarsBuilder> {
  GGetQuestsVars._();

  factory GGetQuestsVars([void Function(GGetQuestsVarsBuilder b) updates]) =
      _$GGetQuestsVars;

  static Serializer<GGetQuestsVars> get serializer =>
      _$gGetQuestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetQuestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetQuestsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetQuestsVars.serializer,
        json,
      );
}

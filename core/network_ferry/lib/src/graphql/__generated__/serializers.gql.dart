// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:core_network_ferry/src/graphql/__generated__/schema.schema.gql.dart'
    show
        GCursorOrdering,
        GNewsBoolExp,
        GNewsOrderBy,
        GNewsSelectColumn,
        GNewsStreamCursorInput,
        GNewsStreamCursorValueInput,
        GNotificationsBoolExp,
        GNotificationsOrderBy,
        GNotificationsSelectColumn,
        GNotificationsStreamCursorInput,
        GNotificationsStreamCursorValueInput,
        GOrderBy,
        GSeosBoolExp,
        GSeosOrderBy,
        GSeosSelectColumn,
        GSeosStreamCursorInput,
        GSeosStreamCursorValueInput,
        GStringComparisonExp,
        GTagsBoolExp,
        GTagsOrderBy,
        GTagsSelectColumn,
        GTagsStreamCursorInput,
        GTagsStreamCursorValueInput,
        GTimestamptzComparisonExp,
        GUsersBoolExp,
        GUsersOrderBy,
        GUsersSelectColumn,
        GUsersStreamCursorInput,
        GUsersStreamCursorValueInput,
        GUuidComparisonExp,
        Guuid;
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.data.gql.dart'
    show GGetNewsData, GGetNewsData_news;
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.req.gql.dart'
    show GGetNewsReq;
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.var.gql.dart'
    show GGetNewsVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCursorOrdering,
  GGetNewsData,
  GGetNewsData_news,
  GGetNewsReq,
  GGetNewsVars,
  GNewsBoolExp,
  GNewsOrderBy,
  GNewsSelectColumn,
  GNewsStreamCursorInput,
  GNewsStreamCursorValueInput,
  GNotificationsBoolExp,
  GNotificationsOrderBy,
  GNotificationsSelectColumn,
  GNotificationsStreamCursorInput,
  GNotificationsStreamCursorValueInput,
  GOrderBy,
  GSeosBoolExp,
  GSeosOrderBy,
  GSeosSelectColumn,
  GSeosStreamCursorInput,
  GSeosStreamCursorValueInput,
  GStringComparisonExp,
  GTagsBoolExp,
  GTagsOrderBy,
  GTagsSelectColumn,
  GTagsStreamCursorInput,
  GTagsStreamCursorValueInput,
  GTimestamptzComparisonExp,
  GUsersBoolExp,
  GUsersOrderBy,
  GUsersSelectColumn,
  GUsersStreamCursorInput,
  GUsersStreamCursorValueInput,
  GUuidComparisonExp,
  Guuid,
])
final Serializers serializers = _serializersBuilder.build();

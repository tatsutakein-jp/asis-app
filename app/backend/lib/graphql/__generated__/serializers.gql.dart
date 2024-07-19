// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:backend/graphql/__generated__/schema.schema.gql.dart'
    show
        GAchievementsBoolExp,
        GAchievementsOrderBy,
        GAchievementsSelectColumn,
        GAchievementsStreamCursorInput,
        GAchievementsStreamCursorValueInput,
        GCursorOrdering,
        GIntComparisonExp,
        GMainQuestRelationsBoolExp,
        GMainQuestRelationsConstraint,
        GMainQuestRelationsInsertInput,
        GMainQuestRelationsOnConflict,
        GMainQuestRelationsOrderBy,
        GMainQuestRelationsPkColumnsInput,
        GMainQuestRelationsSelectColumn,
        GMainQuestRelationsSetInput,
        GMainQuestRelationsStreamCursorInput,
        GMainQuestRelationsStreamCursorValueInput,
        GMainQuestRelationsUpdateColumn,
        GMainQuestRelationsUpdates,
        GMainQuestsBoolExp,
        GMainQuestsConstraint,
        GMainQuestsInsertInput,
        GMainQuestsOnConflict,
        GMainQuestsOrderBy,
        GMainQuestsPkColumnsInput,
        GMainQuestsSelectColumn,
        GMainQuestsSetInput,
        GMainQuestsStreamCursorInput,
        GMainQuestsStreamCursorValueInput,
        GMainQuestsUpdateColumn,
        GMainQuestsUpdates,
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
        GQuestCategoriesBoolExp,
        GQuestCategoriesOrderBy,
        GQuestCategoriesSelectColumn,
        GQuestCategoriesStreamCursorInput,
        GQuestCategoriesStreamCursorValueInput,
        GQuestStatusBoolExp,
        GQuestStatusEnum,
        GQuestStatusEnumComparisonExp,
        GQuestStatusOrderBy,
        GQuestStatusSelectColumn,
        GQuestStatusStreamCursorInput,
        GQuestStatusStreamCursorValueInput,
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
        GUserAchievementsBoolExp,
        GUserAchievementsOrderBy,
        GUserAchievementsSelectColumn,
        GUserAchievementsStreamCursorInput,
        GUserAchievementsStreamCursorValueInput,
        GUsersBoolExp,
        GUsersOrderBy,
        GUsersSelectColumn,
        GUsersStreamCursorInput,
        GUsersStreamCursorValueInput,
        GUuidComparisonExp;
import 'package:backend/graphql/news/__generated__/GetNews.data.gql.dart'
    show GGetNewsData, GGetNewsData_news;
import 'package:backend/graphql/news/__generated__/GetNews.req.gql.dart'
    show GGetNewsReq;
import 'package:backend/graphql/news/__generated__/GetNews.var.gql.dart'
    show GGetNewsVars;
import 'package:backend/graphql/quest/__generated__/GetQuests.data.gql.dart'
    show GGetQuestsData, GGetQuestsData_mainQuests;
import 'package:backend/graphql/quest/__generated__/GetQuests.req.gql.dart'
    show GGetQuestsReq;
import 'package:backend/graphql/quest/__generated__/GetQuests.var.gql.dart'
    show GGetQuestsVars;
import 'package:backend/graphql/quest/__generated__/InsertMainQuest.data.gql.dart'
    show GInsertMainQuestData, GInsertMainQuestData_insertMainQuestsOne;
import 'package:backend/graphql/quest/__generated__/InsertMainQuest.req.gql.dart'
    show GInsertMainQuestReq;
import 'package:backend/graphql/quest/__generated__/InsertMainQuest.var.gql.dart'
    show GInsertMainQuestVars;
import 'package:backend/graphql/serializer/timestamptz_serializer.dart'
    show TimestamptzSerializer;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(TimestamptzSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAchievementsBoolExp,
  GAchievementsOrderBy,
  GAchievementsSelectColumn,
  GAchievementsStreamCursorInput,
  GAchievementsStreamCursorValueInput,
  GCursorOrdering,
  GGetNewsData,
  GGetNewsData_news,
  GGetNewsReq,
  GGetNewsVars,
  GGetQuestsData,
  GGetQuestsData_mainQuests,
  GGetQuestsReq,
  GGetQuestsVars,
  GInsertMainQuestData,
  GInsertMainQuestData_insertMainQuestsOne,
  GInsertMainQuestReq,
  GInsertMainQuestVars,
  GIntComparisonExp,
  GMainQuestRelationsBoolExp,
  GMainQuestRelationsConstraint,
  GMainQuestRelationsInsertInput,
  GMainQuestRelationsOnConflict,
  GMainQuestRelationsOrderBy,
  GMainQuestRelationsPkColumnsInput,
  GMainQuestRelationsSelectColumn,
  GMainQuestRelationsSetInput,
  GMainQuestRelationsStreamCursorInput,
  GMainQuestRelationsStreamCursorValueInput,
  GMainQuestRelationsUpdateColumn,
  GMainQuestRelationsUpdates,
  GMainQuestsBoolExp,
  GMainQuestsConstraint,
  GMainQuestsInsertInput,
  GMainQuestsOnConflict,
  GMainQuestsOrderBy,
  GMainQuestsPkColumnsInput,
  GMainQuestsSelectColumn,
  GMainQuestsSetInput,
  GMainQuestsStreamCursorInput,
  GMainQuestsStreamCursorValueInput,
  GMainQuestsUpdateColumn,
  GMainQuestsUpdates,
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
  GQuestCategoriesBoolExp,
  GQuestCategoriesOrderBy,
  GQuestCategoriesSelectColumn,
  GQuestCategoriesStreamCursorInput,
  GQuestCategoriesStreamCursorValueInput,
  GQuestStatusBoolExp,
  GQuestStatusEnum,
  GQuestStatusEnumComparisonExp,
  GQuestStatusOrderBy,
  GQuestStatusSelectColumn,
  GQuestStatusStreamCursorInput,
  GQuestStatusStreamCursorValueInput,
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
  GUserAchievementsBoolExp,
  GUserAchievementsOrderBy,
  GUserAchievementsSelectColumn,
  GUserAchievementsStreamCursorInput,
  GUserAchievementsStreamCursorValueInput,
  GUsersBoolExp,
  GUsersOrderBy,
  GUsersSelectColumn,
  GUsersStreamCursorInput,
  GUsersStreamCursorValueInput,
  GUuidComparisonExp,
])
final Serializers serializers = _serializersBuilder.build();

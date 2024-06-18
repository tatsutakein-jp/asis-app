// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:core_network_ferry/src/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GCursorOrdering extends EnumClass {
  const GCursorOrdering._(String name) : super(name);

  static const GCursorOrdering ASC = _$gCursorOrderingASC;

  static const GCursorOrdering DESC = _$gCursorOrderingDESC;

  static Serializer<GCursorOrdering> get serializer =>
      _$gCursorOrderingSerializer;

  static BuiltSet<GCursorOrdering> get values => _$gCursorOrderingValues;

  static GCursorOrdering valueOf(String name) => _$gCursorOrderingValueOf(name);
}

abstract class GNewsBoolExp
    implements Built<GNewsBoolExp, GNewsBoolExpBuilder> {
  GNewsBoolExp._();

  factory GNewsBoolExp([void Function(GNewsBoolExpBuilder b) updates]) =
      _$GNewsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GNewsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GNewsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GNewsBoolExp>? get G_or;
  GStringComparisonExp? get content;
  GStringComparisonExp? get coverImageUrl;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get excerpt;
  GUuidComparisonExp? get id;
  GTimestamptzComparisonExp? get publishedAt;
  GSeosBoolExp? get seo;
  GUuidComparisonExp? get seoId;
  GStringComparisonExp? get slug;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GNewsBoolExp> get serializer => _$gNewsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsBoolExp.serializer,
        json,
      );
}

abstract class GNewsOrderBy
    implements Built<GNewsOrderBy, GNewsOrderByBuilder> {
  GNewsOrderBy._();

  factory GNewsOrderBy([void Function(GNewsOrderByBuilder b) updates]) =
      _$GNewsOrderBy;

  GOrderBy? get content;
  GOrderBy? get coverImageUrl;
  GOrderBy? get createdAt;
  GOrderBy? get excerpt;
  GOrderBy? get id;
  GOrderBy? get publishedAt;
  GSeosOrderBy? get seo;
  GOrderBy? get seoId;
  GOrderBy? get slug;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  static Serializer<GNewsOrderBy> get serializer => _$gNewsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsOrderBy.serializer,
        json,
      );
}

class GNewsSelectColumn extends EnumClass {
  const GNewsSelectColumn._(String name) : super(name);

  static const GNewsSelectColumn content = _$gNewsSelectColumncontent;

  static const GNewsSelectColumn coverImageUrl =
      _$gNewsSelectColumncoverImageUrl;

  static const GNewsSelectColumn createdAt = _$gNewsSelectColumncreatedAt;

  static const GNewsSelectColumn excerpt = _$gNewsSelectColumnexcerpt;

  static const GNewsSelectColumn id = _$gNewsSelectColumnid;

  static const GNewsSelectColumn publishedAt = _$gNewsSelectColumnpublishedAt;

  static const GNewsSelectColumn seoId = _$gNewsSelectColumnseoId;

  static const GNewsSelectColumn slug = _$gNewsSelectColumnslug;

  static const GNewsSelectColumn title = _$gNewsSelectColumntitle;

  static const GNewsSelectColumn updatedAt = _$gNewsSelectColumnupdatedAt;

  static Serializer<GNewsSelectColumn> get serializer =>
      _$gNewsSelectColumnSerializer;

  static BuiltSet<GNewsSelectColumn> get values => _$gNewsSelectColumnValues;

  static GNewsSelectColumn valueOf(String name) =>
      _$gNewsSelectColumnValueOf(name);
}

abstract class GNewsStreamCursorInput
    implements Built<GNewsStreamCursorInput, GNewsStreamCursorInputBuilder> {
  GNewsStreamCursorInput._();

  factory GNewsStreamCursorInput(
          [void Function(GNewsStreamCursorInputBuilder b) updates]) =
      _$GNewsStreamCursorInput;

  GNewsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GNewsStreamCursorInput> get serializer =>
      _$gNewsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsStreamCursorInput.serializer,
        json,
      );
}

abstract class GNewsStreamCursorValueInput
    implements
        Built<GNewsStreamCursorValueInput, GNewsStreamCursorValueInputBuilder> {
  GNewsStreamCursorValueInput._();

  factory GNewsStreamCursorValueInput(
          [void Function(GNewsStreamCursorValueInputBuilder b) updates]) =
      _$GNewsStreamCursorValueInput;

  String? get content;
  String? get coverImageUrl;
  DateTime? get createdAt;
  String? get excerpt;
  Guuid? get id;
  DateTime? get publishedAt;
  Guuid? get seoId;
  String? get slug;
  String? get title;
  DateTime? get updatedAt;
  static Serializer<GNewsStreamCursorValueInput> get serializer =>
      _$gNewsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GNotificationsBoolExp
    implements Built<GNotificationsBoolExp, GNotificationsBoolExpBuilder> {
  GNotificationsBoolExp._();

  factory GNotificationsBoolExp(
          [void Function(GNotificationsBoolExpBuilder b) updates]) =
      _$GNotificationsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GNotificationsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GNotificationsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GNotificationsBoolExp>? get G_or;
  GStringComparisonExp? get content;
  GStringComparisonExp? get coverImageUrl;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get excerpt;
  GTimestamptzComparisonExp? get firstOpenedAt;
  GUuidComparisonExp? get id;
  GTimestamptzComparisonExp? get publishedAt;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  GStringComparisonExp? get userId;
  static Serializer<GNotificationsBoolExp> get serializer =>
      _$gNotificationsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsBoolExp.serializer,
        json,
      );
}

abstract class GNotificationsOrderBy
    implements Built<GNotificationsOrderBy, GNotificationsOrderByBuilder> {
  GNotificationsOrderBy._();

  factory GNotificationsOrderBy(
          [void Function(GNotificationsOrderByBuilder b) updates]) =
      _$GNotificationsOrderBy;

  GOrderBy? get content;
  GOrderBy? get coverImageUrl;
  GOrderBy? get createdAt;
  GOrderBy? get excerpt;
  GOrderBy? get firstOpenedAt;
  GOrderBy? get id;
  GOrderBy? get publishedAt;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  GOrderBy? get userId;
  static Serializer<GNotificationsOrderBy> get serializer =>
      _$gNotificationsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsOrderBy.serializer,
        json,
      );
}

class GNotificationsSelectColumn extends EnumClass {
  const GNotificationsSelectColumn._(String name) : super(name);

  static const GNotificationsSelectColumn content =
      _$gNotificationsSelectColumncontent;

  static const GNotificationsSelectColumn coverImageUrl =
      _$gNotificationsSelectColumncoverImageUrl;

  static const GNotificationsSelectColumn createdAt =
      _$gNotificationsSelectColumncreatedAt;

  static const GNotificationsSelectColumn excerpt =
      _$gNotificationsSelectColumnexcerpt;

  static const GNotificationsSelectColumn firstOpenedAt =
      _$gNotificationsSelectColumnfirstOpenedAt;

  static const GNotificationsSelectColumn id = _$gNotificationsSelectColumnid;

  static const GNotificationsSelectColumn publishedAt =
      _$gNotificationsSelectColumnpublishedAt;

  static const GNotificationsSelectColumn title =
      _$gNotificationsSelectColumntitle;

  static const GNotificationsSelectColumn updatedAt =
      _$gNotificationsSelectColumnupdatedAt;

  static const GNotificationsSelectColumn userId =
      _$gNotificationsSelectColumnuserId;

  static Serializer<GNotificationsSelectColumn> get serializer =>
      _$gNotificationsSelectColumnSerializer;

  static BuiltSet<GNotificationsSelectColumn> get values =>
      _$gNotificationsSelectColumnValues;

  static GNotificationsSelectColumn valueOf(String name) =>
      _$gNotificationsSelectColumnValueOf(name);
}

abstract class GNotificationsStreamCursorInput
    implements
        Built<GNotificationsStreamCursorInput,
            GNotificationsStreamCursorInputBuilder> {
  GNotificationsStreamCursorInput._();

  factory GNotificationsStreamCursorInput(
          [void Function(GNotificationsStreamCursorInputBuilder b) updates]) =
      _$GNotificationsStreamCursorInput;

  GNotificationsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GNotificationsStreamCursorInput> get serializer =>
      _$gNotificationsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsStreamCursorInput.serializer,
        json,
      );
}

abstract class GNotificationsStreamCursorValueInput
    implements
        Built<GNotificationsStreamCursorValueInput,
            GNotificationsStreamCursorValueInputBuilder> {
  GNotificationsStreamCursorValueInput._();

  factory GNotificationsStreamCursorValueInput(
      [void Function(GNotificationsStreamCursorValueInputBuilder b)
          updates]) = _$GNotificationsStreamCursorValueInput;

  String? get content;
  String? get coverImageUrl;
  DateTime? get createdAt;
  String? get excerpt;
  DateTime? get firstOpenedAt;
  Guuid? get id;
  DateTime? get publishedAt;
  String? get title;
  DateTime? get updatedAt;
  String? get userId;
  static Serializer<GNotificationsStreamCursorValueInput> get serializer =>
      _$gNotificationsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsStreamCursorValueInput.serializer,
        json,
      );
}

class GOrderBy extends EnumClass {
  const GOrderBy._(String name) : super(name);

  static const GOrderBy ASC = _$gOrderByASC;

  static const GOrderBy ASC_NULLS_FIRST = _$gOrderByASC_NULLS_FIRST;

  static const GOrderBy ASC_NULLS_LAST = _$gOrderByASC_NULLS_LAST;

  static const GOrderBy DESC = _$gOrderByDESC;

  static const GOrderBy DESC_NULLS_FIRST = _$gOrderByDESC_NULLS_FIRST;

  static const GOrderBy DESC_NULLS_LAST = _$gOrderByDESC_NULLS_LAST;

  static Serializer<GOrderBy> get serializer => _$gOrderBySerializer;

  static BuiltSet<GOrderBy> get values => _$gOrderByValues;

  static GOrderBy valueOf(String name) => _$gOrderByValueOf(name);
}

abstract class GSeosBoolExp
    implements Built<GSeosBoolExp, GSeosBoolExpBuilder> {
  GSeosBoolExp._();

  factory GSeosBoolExp([void Function(GSeosBoolExpBuilder b) updates]) =
      _$GSeosBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GSeosBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GSeosBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GSeosBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get ogImageUrl;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GSeosBoolExp> get serializer => _$gSeosBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosBoolExp.serializer,
        json,
      );
}

abstract class GSeosOrderBy
    implements Built<GSeosOrderBy, GSeosOrderByBuilder> {
  GSeosOrderBy._();

  factory GSeosOrderBy([void Function(GSeosOrderByBuilder b) updates]) =
      _$GSeosOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get ogImageUrl;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  static Serializer<GSeosOrderBy> get serializer => _$gSeosOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosOrderBy.serializer,
        json,
      );
}

class GSeosSelectColumn extends EnumClass {
  const GSeosSelectColumn._(String name) : super(name);

  static const GSeosSelectColumn createdAt = _$gSeosSelectColumncreatedAt;

  static const GSeosSelectColumn description = _$gSeosSelectColumndescription;

  static const GSeosSelectColumn id = _$gSeosSelectColumnid;

  static const GSeosSelectColumn ogImageUrl = _$gSeosSelectColumnogImageUrl;

  static const GSeosSelectColumn title = _$gSeosSelectColumntitle;

  static const GSeosSelectColumn updatedAt = _$gSeosSelectColumnupdatedAt;

  static Serializer<GSeosSelectColumn> get serializer =>
      _$gSeosSelectColumnSerializer;

  static BuiltSet<GSeosSelectColumn> get values => _$gSeosSelectColumnValues;

  static GSeosSelectColumn valueOf(String name) =>
      _$gSeosSelectColumnValueOf(name);
}

abstract class GSeosStreamCursorInput
    implements Built<GSeosStreamCursorInput, GSeosStreamCursorInputBuilder> {
  GSeosStreamCursorInput._();

  factory GSeosStreamCursorInput(
          [void Function(GSeosStreamCursorInputBuilder b) updates]) =
      _$GSeosStreamCursorInput;

  GSeosStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GSeosStreamCursorInput> get serializer =>
      _$gSeosStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosStreamCursorInput.serializer,
        json,
      );
}

abstract class GSeosStreamCursorValueInput
    implements
        Built<GSeosStreamCursorValueInput, GSeosStreamCursorValueInputBuilder> {
  GSeosStreamCursorValueInput._();

  factory GSeosStreamCursorValueInput(
          [void Function(GSeosStreamCursorValueInputBuilder b) updates]) =
      _$GSeosStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  Guuid? get id;
  String? get ogImageUrl;
  String? get title;
  DateTime? get updatedAt;
  static Serializer<GSeosStreamCursorValueInput> get serializer =>
      _$gSeosStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GStringComparisonExp
    implements Built<GStringComparisonExp, GStringComparisonExpBuilder> {
  GStringComparisonExp._();

  factory GStringComparisonExp(
          [void Function(GStringComparisonExpBuilder b) updates]) =
      _$GStringComparisonExp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  String? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  String? get G_iregex;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_like')
  String? get G_like;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  String? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  String? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  String? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  String? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  String? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  String? get G_regex;
  @BuiltValueField(wireName: '_similar')
  String? get G_similar;
  static Serializer<GStringComparisonExp> get serializer =>
      _$gStringComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStringComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStringComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStringComparisonExp.serializer,
        json,
      );
}

abstract class GTagsBoolExp
    implements Built<GTagsBoolExp, GTagsBoolExpBuilder> {
  GTagsBoolExp._();

  factory GTagsBoolExp([void Function(GTagsBoolExpBuilder b) updates]) =
      _$GTagsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GTagsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GTagsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GTagsBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get tag;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GTagsBoolExp> get serializer => _$gTagsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsBoolExp.serializer,
        json,
      );
}

abstract class GTagsOrderBy
    implements Built<GTagsOrderBy, GTagsOrderByBuilder> {
  GTagsOrderBy._();

  factory GTagsOrderBy([void Function(GTagsOrderByBuilder b) updates]) =
      _$GTagsOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get tag;
  GOrderBy? get updatedAt;
  static Serializer<GTagsOrderBy> get serializer => _$gTagsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsOrderBy.serializer,
        json,
      );
}

class GTagsSelectColumn extends EnumClass {
  const GTagsSelectColumn._(String name) : super(name);

  static const GTagsSelectColumn createdAt = _$gTagsSelectColumncreatedAt;

  static const GTagsSelectColumn description = _$gTagsSelectColumndescription;

  static const GTagsSelectColumn id = _$gTagsSelectColumnid;

  static const GTagsSelectColumn tag = _$gTagsSelectColumntag;

  static const GTagsSelectColumn updatedAt = _$gTagsSelectColumnupdatedAt;

  static Serializer<GTagsSelectColumn> get serializer =>
      _$gTagsSelectColumnSerializer;

  static BuiltSet<GTagsSelectColumn> get values => _$gTagsSelectColumnValues;

  static GTagsSelectColumn valueOf(String name) =>
      _$gTagsSelectColumnValueOf(name);
}

abstract class GTagsStreamCursorInput
    implements Built<GTagsStreamCursorInput, GTagsStreamCursorInputBuilder> {
  GTagsStreamCursorInput._();

  factory GTagsStreamCursorInput(
          [void Function(GTagsStreamCursorInputBuilder b) updates]) =
      _$GTagsStreamCursorInput;

  GTagsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GTagsStreamCursorInput> get serializer =>
      _$gTagsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsStreamCursorInput.serializer,
        json,
      );
}

abstract class GTagsStreamCursorValueInput
    implements
        Built<GTagsStreamCursorValueInput, GTagsStreamCursorValueInputBuilder> {
  GTagsStreamCursorValueInput._();

  factory GTagsStreamCursorValueInput(
          [void Function(GTagsStreamCursorValueInputBuilder b) updates]) =
      _$GTagsStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  Guuid? get id;
  String? get tag;
  DateTime? get updatedAt;
  static Serializer<GTagsStreamCursorValueInput> get serializer =>
      _$gTagsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GTimestamptzComparisonExp
    implements
        Built<GTimestamptzComparisonExp, GTimestamptzComparisonExpBuilder> {
  GTimestamptzComparisonExp._();

  factory GTimestamptzComparisonExp(
          [void Function(GTimestamptzComparisonExpBuilder b) updates]) =
      _$GTimestamptzComparisonExp;

  @BuiltValueField(wireName: '_eq')
  DateTime? get G_eq;
  @BuiltValueField(wireName: '_gt')
  DateTime? get G_gt;
  @BuiltValueField(wireName: '_gte')
  DateTime? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<DateTime>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_lt')
  DateTime? get G_lt;
  @BuiltValueField(wireName: '_lte')
  DateTime? get G_lte;
  @BuiltValueField(wireName: '_neq')
  DateTime? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<DateTime>? get G_nin;
  static Serializer<GTimestamptzComparisonExp> get serializer =>
      _$gTimestamptzComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTimestamptzComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTimestamptzComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTimestamptzComparisonExp.serializer,
        json,
      );
}

abstract class GUsersBoolExp
    implements Built<GUsersBoolExp, GUsersBoolExpBuilder> {
  GUsersBoolExp._();

  factory GUsersBoolExp([void Function(GUsersBoolExpBuilder b) updates]) =
      _$GUsersBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GUsersBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GUsersBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GUsersBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get email;
  GStringComparisonExp? get id;
  GTimestamptzComparisonExp? get lastSeen;
  GStringComparisonExp? get nickname;
  GStringComparisonExp? get picture;
  GTimestamptzComparisonExp? get updatedAt;
  GStringComparisonExp? get username;
  GStringComparisonExp? get website;
  static Serializer<GUsersBoolExp> get serializer => _$gUsersBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersBoolExp.serializer,
        json,
      );
}

abstract class GUsersOrderBy
    implements Built<GUsersOrderBy, GUsersOrderByBuilder> {
  GUsersOrderBy._();

  factory GUsersOrderBy([void Function(GUsersOrderByBuilder b) updates]) =
      _$GUsersOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get email;
  GOrderBy? get id;
  GOrderBy? get lastSeen;
  GOrderBy? get nickname;
  GOrderBy? get picture;
  GOrderBy? get updatedAt;
  GOrderBy? get username;
  GOrderBy? get website;
  static Serializer<GUsersOrderBy> get serializer => _$gUsersOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersOrderBy.serializer,
        json,
      );
}

class GUsersSelectColumn extends EnumClass {
  const GUsersSelectColumn._(String name) : super(name);

  static const GUsersSelectColumn createdAt = _$gUsersSelectColumncreatedAt;

  static const GUsersSelectColumn email = _$gUsersSelectColumnemail;

  static const GUsersSelectColumn id = _$gUsersSelectColumnid;

  static const GUsersSelectColumn lastSeen = _$gUsersSelectColumnlastSeen;

  static const GUsersSelectColumn nickname = _$gUsersSelectColumnnickname;

  static const GUsersSelectColumn picture = _$gUsersSelectColumnpicture;

  static const GUsersSelectColumn updatedAt = _$gUsersSelectColumnupdatedAt;

  static const GUsersSelectColumn username = _$gUsersSelectColumnusername;

  static const GUsersSelectColumn website = _$gUsersSelectColumnwebsite;

  static Serializer<GUsersSelectColumn> get serializer =>
      _$gUsersSelectColumnSerializer;

  static BuiltSet<GUsersSelectColumn> get values => _$gUsersSelectColumnValues;

  static GUsersSelectColumn valueOf(String name) =>
      _$gUsersSelectColumnValueOf(name);
}

abstract class GUsersStreamCursorInput
    implements Built<GUsersStreamCursorInput, GUsersStreamCursorInputBuilder> {
  GUsersStreamCursorInput._();

  factory GUsersStreamCursorInput(
          [void Function(GUsersStreamCursorInputBuilder b) updates]) =
      _$GUsersStreamCursorInput;

  GUsersStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GUsersStreamCursorInput> get serializer =>
      _$gUsersStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersStreamCursorInput.serializer,
        json,
      );
}

abstract class GUsersStreamCursorValueInput
    implements
        Built<GUsersStreamCursorValueInput,
            GUsersStreamCursorValueInputBuilder> {
  GUsersStreamCursorValueInput._();

  factory GUsersStreamCursorValueInput(
          [void Function(GUsersStreamCursorValueInputBuilder b) updates]) =
      _$GUsersStreamCursorValueInput;

  DateTime? get createdAt;
  String? get email;
  String? get id;
  DateTime? get lastSeen;
  String? get nickname;
  String? get picture;
  DateTime? get updatedAt;
  String? get username;
  String? get website;
  static Serializer<GUsersStreamCursorValueInput> get serializer =>
      _$gUsersStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GUuidComparisonExp
    implements Built<GUuidComparisonExp, GUuidComparisonExpBuilder> {
  GUuidComparisonExp._();

  factory GUuidComparisonExp(
          [void Function(GUuidComparisonExpBuilder b) updates]) =
      _$GUuidComparisonExp;

  @BuiltValueField(wireName: '_eq')
  Guuid? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Guuid? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Guuid? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Guuid>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_lt')
  Guuid? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Guuid? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Guuid? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Guuid>? get G_nin;
  static Serializer<GUuidComparisonExp> get serializer =>
      _$gUuidComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUuidComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUuidComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUuidComparisonExp.serializer,
        json,
      );
}

abstract class Guuid implements Built<Guuid, GuuidBuilder> {
  Guuid._();

  factory Guuid([String? value]) =>
      _$Guuid((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Guuid> get serializer => _i2.DefaultScalarSerializer<Guuid>(
      (Object serialized) => Guuid((serialized as String?)));
}

const Map<String, Set<String>> possibleTypesMap = {};

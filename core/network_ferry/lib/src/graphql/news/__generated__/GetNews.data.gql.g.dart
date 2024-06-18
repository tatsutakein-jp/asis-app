// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetNews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetNewsData> _$gGetNewsDataSerializer =
    new _$GGetNewsDataSerializer();
Serializer<GGetNewsData_news> _$gGetNewsDataNewsSerializer =
    new _$GGetNewsData_newsSerializer();

class _$GGetNewsDataSerializer implements StructuredSerializer<GGetNewsData> {
  @override
  final Iterable<Type> types = const [GGetNewsData, _$GGetNewsData];
  @override
  final String wireName = 'GGetNewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetNewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'news',
      serializers.serialize(object.news,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetNewsData_news)])),
    ];

    return result;
  }

  @override
  GGetNewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetNewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'news':
          result.news.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GGetNewsData_news)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetNewsData_newsSerializer
    implements StructuredSerializer<GGetNewsData_news> {
  @override
  final Iterable<Type> types = const [GGetNewsData_news, _$GGetNewsData_news];
  @override
  final String wireName = 'GGetNewsData_news';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetNewsData_news object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'excerpt',
      serializers.serialize(object.excerpt,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coverImageUrl;
    if (value != null) {
      result
        ..add('coverImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetNewsData_news deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetNewsData_newsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'excerpt':
          result.excerpt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetNewsData extends GGetNewsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetNewsData_news> news;

  factory _$GGetNewsData([void Function(GGetNewsDataBuilder)? updates]) =>
      (new GGetNewsDataBuilder()..update(updates))._build();

  _$GGetNewsData._({required this.G__typename, required this.news})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetNewsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(news, r'GGetNewsData', 'news');
  }

  @override
  GGetNewsData rebuild(void Function(GGetNewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNewsDataBuilder toBuilder() => new GGetNewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNewsData &&
        G__typename == other.G__typename &&
        news == other.news;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, news.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetNewsData')
          ..add('G__typename', G__typename)
          ..add('news', news))
        .toString();
  }
}

class GGetNewsDataBuilder
    implements Builder<GGetNewsData, GGetNewsDataBuilder> {
  _$GGetNewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetNewsData_news>? _news;
  ListBuilder<GGetNewsData_news> get news =>
      _$this._news ??= new ListBuilder<GGetNewsData_news>();
  set news(ListBuilder<GGetNewsData_news>? news) => _$this._news = news;

  GGetNewsDataBuilder() {
    GGetNewsData._initializeBuilder(this);
  }

  GGetNewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _news = $v.news.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetNewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNewsData;
  }

  @override
  void update(void Function(GGetNewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNewsData build() => _build();

  _$GGetNewsData _build() {
    _$GGetNewsData _$result;
    try {
      _$result = _$v ??
          new _$GGetNewsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetNewsData', 'G__typename'),
              news: news.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'news';
        news.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetNewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetNewsData_news extends GGetNewsData_news {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final String title;
  @override
  final DateTime? publishedAt;
  @override
  final String excerpt;
  @override
  final String? coverImageUrl;
  @override
  final String content;

  factory _$GGetNewsData_news(
          [void Function(GGetNewsData_newsBuilder)? updates]) =>
      (new GGetNewsData_newsBuilder()..update(updates))._build();

  _$GGetNewsData_news._(
      {required this.G__typename,
      required this.id,
      required this.title,
      this.publishedAt,
      required this.excerpt,
      this.coverImageUrl,
      required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetNewsData_news', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GGetNewsData_news', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'GGetNewsData_news', 'title');
    BuiltValueNullFieldError.checkNotNull(
        excerpt, r'GGetNewsData_news', 'excerpt');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GGetNewsData_news', 'content');
  }

  @override
  GGetNewsData_news rebuild(void Function(GGetNewsData_newsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNewsData_newsBuilder toBuilder() =>
      new GGetNewsData_newsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNewsData_news &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        publishedAt == other.publishedAt &&
        excerpt == other.excerpt &&
        coverImageUrl == other.coverImageUrl &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetNewsData_news')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('publishedAt', publishedAt)
          ..add('excerpt', excerpt)
          ..add('coverImageUrl', coverImageUrl)
          ..add('content', content))
        .toString();
  }
}

class GGetNewsData_newsBuilder
    implements Builder<GGetNewsData_news, GGetNewsData_newsBuilder> {
  _$GGetNewsData_news? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(String? excerpt) => _$this._excerpt = excerpt;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GGetNewsData_newsBuilder() {
    GGetNewsData_news._initializeBuilder(this);
  }

  GGetNewsData_newsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _title = $v.title;
      _publishedAt = $v.publishedAt;
      _excerpt = $v.excerpt;
      _coverImageUrl = $v.coverImageUrl;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetNewsData_news other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNewsData_news;
  }

  @override
  void update(void Function(GGetNewsData_newsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNewsData_news build() => _build();

  _$GGetNewsData_news _build() {
    _$GGetNewsData_news _$result;
    try {
      _$result = _$v ??
          new _$GGetNewsData_news._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetNewsData_news', 'G__typename'),
              id: id.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GGetNewsData_news', 'title'),
              publishedAt: publishedAt,
              excerpt: BuiltValueNullFieldError.checkNotNull(
                  excerpt, r'GGetNewsData_news', 'excerpt'),
              coverImageUrl: coverImageUrl,
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'GGetNewsData_news', 'content'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetNewsData_news', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

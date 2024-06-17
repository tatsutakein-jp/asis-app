// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsFeed {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsFeedCopyWith<NewsFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedCopyWith<$Res> {
  factory $NewsFeedCopyWith(NewsFeed value, $Res Function(NewsFeed) then) =
      _$NewsFeedCopyWithImpl<$Res, NewsFeed>;
  @useResult
  $Res call(
      {String id,
      String title,
      String publishedAt,
      String excerpt,
      String coverImageUrl,
      String content});
}

/// @nodoc
class _$NewsFeedCopyWithImpl<$Res, $Val extends NewsFeed>
    implements $NewsFeedCopyWith<$Res> {
  _$NewsFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? publishedAt = null,
    Object? excerpt = null,
    Object? coverImageUrl = null,
    Object? content = null,
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
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsFeedImplCopyWith<$Res>
    implements $NewsFeedCopyWith<$Res> {
  factory _$$NewsFeedImplCopyWith(
          _$NewsFeedImpl value, $Res Function(_$NewsFeedImpl) then) =
      __$$NewsFeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String publishedAt,
      String excerpt,
      String coverImageUrl,
      String content});
}

/// @nodoc
class __$$NewsFeedImplCopyWithImpl<$Res>
    extends _$NewsFeedCopyWithImpl<$Res, _$NewsFeedImpl>
    implements _$$NewsFeedImplCopyWith<$Res> {
  __$$NewsFeedImplCopyWithImpl(
      _$NewsFeedImpl _value, $Res Function(_$NewsFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? publishedAt = null,
    Object? excerpt = null,
    Object? coverImageUrl = null,
    Object? content = null,
  }) {
    return _then(_$NewsFeedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsFeedImpl implements _NewsFeed {
  const _$NewsFeedImpl(
      {required this.id,
      required this.title,
      required this.publishedAt,
      required this.excerpt,
      required this.coverImageUrl,
      required this.content});

  @override
  final String id;
  @override
  final String title;
  @override
  final String publishedAt;
  @override
  final String excerpt;
  @override
  final String coverImageUrl;
  @override
  final String content;

  @override
  String toString() {
    return 'NewsFeed(id: $id, title: $title, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFeedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, publishedAt, excerpt, coverImageUrl, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFeedImplCopyWith<_$NewsFeedImpl> get copyWith =>
      __$$NewsFeedImplCopyWithImpl<_$NewsFeedImpl>(this, _$identity);
}

abstract class _NewsFeed implements NewsFeed {
  const factory _NewsFeed(
      {required final String id,
      required final String title,
      required final String publishedAt,
      required final String excerpt,
      required final String coverImageUrl,
      required final String content}) = _$NewsFeedImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get publishedAt;
  @override
  String get excerpt;
  @override
  String get coverImageUrl;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$NewsFeedImplCopyWith<_$NewsFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

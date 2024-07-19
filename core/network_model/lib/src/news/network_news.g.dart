// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkNewsImpl _$$NetworkNewsImplFromJson(Map<String, dynamic> json) =>
    _$NetworkNewsImpl(
      title: json['title'] as String,
      slug: json['slug'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      excerpt: json['excerpt'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
    );

Map<String, dynamic> _$$NetworkNewsImplToJson(_$NetworkNewsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'excerpt': instance.excerpt,
      'coverImageUrl': instance.coverImageUrl,
    };

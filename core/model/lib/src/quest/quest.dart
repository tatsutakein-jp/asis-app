import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest.freezed.dart';

/// クエスト
///
/// {@category Model}
@freezed
class Quest with _$Quest {
  const factory Quest({
    required String id,
    required String name,
    required String description,
    required String body,
  }) = _Quest;
}

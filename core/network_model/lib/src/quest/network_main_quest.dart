import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_main_quest.freezed.dart';

/// メインクエスト
///
/// {@category Model}
@freezed
class NetworkMainQuest with _$NetworkMainQuest {
  const factory NetworkMainQuest({
    required String id,
    required String title,
    required String description,
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required String status,
    required String? coverImageUrl,
    required String note,
  }) = _NetworkMainQuest;
}

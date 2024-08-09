import 'package:core_model/src/quest/quest_count.dart';
import 'package:test/test.dart';

void main() {
  group('QuestCount', () {
    test('pending を正しく計算すること', () {
      const questCount = QuestCount(
        backlog: 5,
        ready: 3,
        inProgress: 2,
        suspend: 1,
        completed: 4,
        abort: 1,
      );

      expect(questCount.pending, equals(7)); // backlog (5) + inProgress (2)
    });

    test('total を正しく計算すること', () {
      const questCount = QuestCount(
        backlog: 5,
        ready: 3,
        inProgress: 2,
        suspend: 1,
        completed: 4,
        abort: 1,
      );

      expect(questCount.total, equals(16)); // 5 + 3 + 2 + 1 + 4 + 1
    });

    test('ゼロの値を持つ QuestCount インスタンスの場合も正しく計算すること', () {
      const questCount = QuestCount(
        backlog: 0,
        ready: 0,
        inProgress: 0,
        suspend: 0,
        completed: 0,
        abort: 0,
      );

      expect(questCount.pending, equals(0));
      expect(questCount.total, equals(0));
    });
  });
}

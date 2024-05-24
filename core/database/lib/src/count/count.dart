import 'package:isar/isar.dart';

part 'count.g.dart';

@collection
final class Count {
  Count({
    required this.id,
    required this.step,
  });

  final int id;
  final int step;
}

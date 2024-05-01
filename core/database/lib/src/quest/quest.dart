import 'package:isar/isar.dart';

part 'quest.g.dart';

@collection
final class Quest {
  Quest({
    required this.id,
    required this.name,
    required this.description,
    required this.body,
  });

  final String id;
  final String name;
  final String description;
  final String body;
}

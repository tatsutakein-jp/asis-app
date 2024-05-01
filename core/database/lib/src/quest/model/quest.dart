import 'package:core_model/quest.dart' as model;
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

extension QuestExtension on Quest {
  model.Quest asModel() => model.Quest(
        id: this.id,
        name: name,
        description: description,
        body: body,
      );
}

extension QuestModelExtension on model.Quest {
  Quest asDbModel() => Quest(
        id: this.id,
        name: name,
        description: description,
        body: body,
      );
}

import 'package:core_database/src/quest/isar_quest_dao.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

/// Isar instance
@Riverpod(keepAlive: true)
Isar isar(IsarRef ref) {
  throw UnimplementedError('isar');
}

/// Isar Database
final isarDatabaseProviders = <Override>[
  isarQuestDaoProvider,
];

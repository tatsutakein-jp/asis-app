import 'package:core_database/src/count/count.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

/// Isar instance
@Riverpod(keepAlive: true)
Isar isar(IsarRef ref) => Isar.open(
  schemas: [
    CountSchema,
  ],
  directory: Isar.sqliteInMemory,
  engine: IsarEngine.sqlite,
);
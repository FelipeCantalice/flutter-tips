import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:app_floor/entities/todo_entity.dart';
import 'package:floor/floor.dart';

part 'database.g.dart';

@Database(version: 1, entities: [TodoEntity])
abstract class AppDatabase extends FloorDatabase {}

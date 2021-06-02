import 'package:app_floor/entities/todo_entity.dart';
import 'package:app_floor/repositories/interfaces/repository_dao.dart';
import 'package:floor/floor.dart';

@dao
abstract class TodoRepositoryDao extends IRepositoryDao<TodoEntity> {
  @Query('SELECT * FROM todos WHERE id = :id')
  Future<TodoEntity> getById(int id);

  @Query('SELECT * FROM todos')
  Future<List<TodoEntity>> getAll();
}

import 'package:app_floor/entities/entity_base.dart';
import 'package:floor/floor.dart';

abstract class IRepositoryDao<Table extends EntityBase> {
  @insert
  Future<int> inserir(Table item);

  @update
  Future<int> atualizar(Table item);

  @delete
  Future<int> deletar(Table item);
}

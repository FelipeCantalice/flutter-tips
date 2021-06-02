import 'package:app_floor/entities/entity_base.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'todos')
class TodoEntity extends EntityBase {
  final String title;
  final String annotation;
  TodoEntity({
    required int id,
    required String createdAt,
    required String updatedAt,
    required this.title,
    required this.annotation,
  }) : super(id: id, createdAt: createdAt, updatedAt: updatedAt);
}

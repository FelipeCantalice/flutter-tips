import 'package:floor/floor.dart';

class EntityBase {
  @PrimaryKey(autoGenerate: true)
  final int id;
  EntityBase({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  final String createdAt;
  final String updatedAt;
}

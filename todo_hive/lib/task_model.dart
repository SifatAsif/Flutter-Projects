import 'package:hive/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String details;
  @HiveField(2)
  final bool isCompleted;

  TaskModel(
      {required this.title, required this.details, required this.isCompleted});
}

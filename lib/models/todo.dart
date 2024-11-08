import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class TodoModel extends HiveObject {
  @HiveField(0)
  String task;

  @HiveField(1)
  String date;

  @HiveField(2)
  String? status;

  TodoModel({required this.task, required this.date, required this.status});

  @override
  String toString() {
    return 'TodoModel(task: $task, date: $date, status: $status)';
  }
}

import 'package:hive/hive.dart';
import 'package:todo2/models/todo.dart';

class TodoService {
  final todoBox = Hive.box("tasks");

  bool addTodo(TodoModel todoModel) {
    return false;
  }
}

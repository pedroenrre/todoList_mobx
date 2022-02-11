import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_base/models/todo_model.dart';
part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  final TextEditingController todoController = TextEditingController();

  @observable
  String todo = '';

  @action
  void setTodo(String value) => todo = value;

  @computed
  bool get isTodoValid => todo.isNotEmpty;

  @computed
  VoidCallback? get addTodoPressed => isTodoValid ? addTodo : null;

  ObservableList<TodoItem> todoList = ObservableList<TodoItem>();

  @action
  void addTodo() {
    todoList.insert(0, TodoItem(todo));
    todo = '';
    todoController.clear();
  }
}

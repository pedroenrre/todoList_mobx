import 'package:mobx/mobx.dart';
part 'todo_model.g.dart';

class TodoItem = _TodoItemBase with _$TodoItem;

abstract class _TodoItemBase with Store {
  _TodoItemBase(this.title);

  @observable
  String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}

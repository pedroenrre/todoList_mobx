// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<bool>? _$isTodoValidComputed;

  @override
  bool get isTodoValid =>
      (_$isTodoValidComputed ??= Computed<bool>(() => super.isTodoValid,
              name: '_ListControllerBase.isTodoValid'))
          .value;
  Computed<VoidCallback?>? _$addTodoPressedComputed;

  @override
  VoidCallback? get addTodoPressed => (_$addTodoPressedComputed ??=
          Computed<VoidCallback?>(() => super.addTodoPressed,
              name: '_ListControllerBase.addTodoPressed'))
      .value;

  final _$todoAtom = Atom(name: '_ListControllerBase.todo');

  @override
  String get todo {
    _$todoAtom.reportRead();
    return super.todo;
  }

  @override
  set todo(String value) {
    _$todoAtom.reportWrite(value, super.todo, () {
      super.todo = value;
    });
  }

  final _$_ListControllerBaseActionController =
      ActionController(name: '_ListControllerBase');

  @override
  void setTodo(String value) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.setTodo');
    try {
      return super.setTodo(value);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todo: ${todo},
isTodoValid: ${isTodoValid},
addTodoPressed: ${addTodoPressed}
    ''';
  }
}

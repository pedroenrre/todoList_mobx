// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoItem on _TodoItemBase, Store {
  final _$titleAtom = Atom(name: '_TodoItemBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$doneAtom = Atom(name: '_TodoItemBase.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  final _$_TodoItemBaseActionController =
      ActionController(name: '_TodoItemBase');

  @override
  void toggleDone() {
    final _$actionInfo = _$_TodoItemBaseActionController.startAction(
        name: '_TodoItemBase.toggleDone');
    try {
      return super.toggleDone();
    } finally {
      _$_TodoItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
done: ${done}
    ''';
  }
}

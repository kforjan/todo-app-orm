import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_orm/data/local/database.dart';
import 'package:todo_app_orm/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this.database) : super(TodoInitial());

  final Database database;

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {}
}

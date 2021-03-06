import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_orm/data/local/database.dart';
import 'package:todo_app_orm/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this._database) : super(TodoInitial());

  final Database _database;

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    if (event is LoadTasks) {
      List<Task> tasks = await _database.getAllTasks();
      yield TasksUpdated(tasks);
    }
    if (event is AddTask) {
      _database.insertTask(event.task);
      final tasks = state.tasks;
      yield TasksUpdated([...tasks, event.task]);
    }
    if (event is RemoveTask) {
      await _database.deleteTask(event.task);
      final tasks = state.tasks;
      tasks.removeWhere((element) => element.id == event.task.id);
      yield TasksUpdated(tasks);
    }
  }
}

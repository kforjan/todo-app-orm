part of 'todo_bloc.dart';

@immutable
abstract class TodoState {
  TodoState(this.tasks);
  final List<Task> tasks;
}

class TodoInitial extends TodoState {
  TodoInitial() : super(<Task>[]);
}

class TasksUpdated extends TodoState {
  TasksUpdated(tasks) : super(tasks);
}

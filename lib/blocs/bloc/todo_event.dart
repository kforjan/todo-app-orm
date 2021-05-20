part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class LoadTasks extends TodoEvent {}

class AddTask extends TodoEvent {
  AddTask(this.task);
  final Task task;
}

class RemoveTask extends TodoEvent {
  RemoveTask(this.task);
  final Task task;
}

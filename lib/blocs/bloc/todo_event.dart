part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class LoadTasks extends TodoEvent {}

class AddTask extends TodoEvent {}

class RemoveTask extends TodoEvent {}

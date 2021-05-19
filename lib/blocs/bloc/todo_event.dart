part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class LoadTasks {}

class AddTask {}

class RemoveTask {}

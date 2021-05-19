import 'package:moor_flutter/moor_flutter.dart';
import 'package:todo_app_orm/data/local/database.dart';

class Task implements Insertable<Task> {
  Task({
    required this.id,
    required this.title,
    required this.description,
    this.isHighPriority = false,
  });

  final int id;
  final String title;
  final String description;
  final bool isHighPriority;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      isHighPriority: Value(isHighPriority),
    ).toColumns(nullToAbsent);
  }
}

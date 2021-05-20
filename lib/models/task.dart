import 'package:moor_flutter/moor_flutter.dart';
import 'package:todo_app_orm/data/local/database.dart';

class Task implements Insertable<Task> {
  Task({
    required this.id,
    required this.title,
    this.isHighPriority = false,
  });

  final String id;
  final String title;
  final bool isHighPriority;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      title: Value(title),
      isHighPriority: Value(isHighPriority),
    ).toColumns(nullToAbsent);
  }
}

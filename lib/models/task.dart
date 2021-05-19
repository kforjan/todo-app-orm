enum TaskPriority {
  high,
  medium,
  low,
}

class Task {
  Task({
    required this.title,
    required this.description,
    required this.priority,
  });

  final String title;
  final String description;
  final TaskPriority priority;
}

class Task {
  Task({
    required this.title,
    required this.description,
    this.isHighPriority = false,
  });

  final String title;
  final String description;
  final bool isHighPriority;
}

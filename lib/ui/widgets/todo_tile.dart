import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    required this.title,
    this.isPriority = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool isPriority;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: isPriority ? Icon(Icons.warning) : null,
    );
  }
}

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
      tileColor: isPriority ? Colors.red[50] : null,
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      trailing: isPriority
          ? Icon(
              Icons.warning,
              color: Colors.red,
            )
          : null,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app_orm/injection_container.dart' as di;
import 'package:todo_app_orm/ui/todo_screen.dart';

void main() {
  di.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TodoScreen(),
    );
  }
}

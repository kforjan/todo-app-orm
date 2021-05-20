import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_orm/blocs/bloc/todo_bloc.dart';
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
      home: BlocProvider(
        create: (context) => di.locator<TodoBloc>(),
        child: TodoScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_orm/blocs/bloc/todo_bloc.dart';
import 'package:todo_app_orm/models/task.dart';
import 'package:todo_app_orm/ui/widgets/todo_tile.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _nameController = TextEditingController();
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO DO:'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() => Column(
        children: [
          BlocConsumer<TodoBloc, TodoState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is TasksUpdated) {
                return Flexible(
                  flex: 13,
                  child: _buildTodoList(state.tasks),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Flexible(
            flex: 3,
            child: _buildInput(),
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
          Flexible(
            flex: 2,
            child: _buildSubmitButton(context),
          ),
        ],
      );

  Widget _buildTodoList(List<Task> tasks) => ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => TodoTile(
          title: tasks[index].title,
          isPriority: tasks[index].isHighPriority,
        ),
      );

  Widget _buildInput() => Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: CheckboxListTile(
                value: isChecked,
                onChanged: (_) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                title: Text(
                  'High priority',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ],
        ),
      );

  Widget _buildSubmitButton(BuildContext context) => ElevatedButton(
        child: Text('Submit'),
        onPressed: () {
          FocusScope.of(context).unfocus();
          BlocProvider.of<TodoBloc>(context).add(
            AddTask(
              Task(
                id: UniqueKey().toString(),
                title: _nameController.text,
                isHighPriority: isChecked,
              ),
            ),
          );
          _nameController.clear();
        },
      );
}

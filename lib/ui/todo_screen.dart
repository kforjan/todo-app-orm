import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

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
          Flexible(
            flex: 13,
            child: _buildTodoList(),
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
            child: _buildSubmitButton(),
          ),
        ],
      );

  Widget _buildTodoList() => ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => Container(),
      );

  Widget _buildInput() => Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: TextField(
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
                //TODO
                value: false,
                onChanged: (isChecked) {},
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

  Widget _buildSubmitButton() => ElevatedButton(
        child: Text('Submit'),
        onPressed: () {},
      );
}

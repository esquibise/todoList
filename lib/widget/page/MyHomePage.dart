import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.todos}) : super(key: key);

  final String title;
  final List<Todo> todos;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.todos.length,
          itemBuilder: (BuildContext context, int index) {
            final Todo todo = widget.todos[index];

            return Card(
              child: ListTile(title: Text(todo.title)),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

class TodoPreview extends StatelessWidget {
  const TodoPreview({Key key, @required this.todo, this.onTap}) : super(key: key);

  final Todo todo;
  final Function onTap;

  void _callback() {
    return print("true");
  }

  Color _getColor(Todo todo){
    return (todo.isDone == true) ? Colors.blue : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : () => _callback() ,
      child: Card(
        color:(todo.isDone == true) ? Colors.green: Colors.red,
        child: Text(todo.title),
        ),
    );
  }
}




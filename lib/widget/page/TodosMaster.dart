import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/widget/page/TodoPreview.dart';
import '../../models/Todo.dart';

class TodosMaster extends StatefulWidget {
  const TodosMaster({Key key, @required this.todos, this.onTodoSelected}) : super(key: key);

  final List<Todo> todos;
  final Function onTodoSelected;

  @override
    _TodosMasterState createState() => _TodosMasterState();
  }

 class _TodosMasterState extends State<TodosMaster>{
  void _onSelect(Todo selectedTodo){
    widget.onTodoSelected(selectedTodo);
  }

  @override
   Widget build(BuildContext context){
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (BuildContext context, int index){
        final Todo todo = widget.todos[index];

        return TodoPreview(todo: todo, onTap: _onSelect);
      },
    );
  }

 }

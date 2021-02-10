import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/data/todos.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodosMaster.dart';

class AllTodosPage extends StatefulWidget {
 AllTodosPage({Key key, this.todos, this.title,}) : super(key: key);

  final List<Todo> todos;
  final String title;

  @override
   _AllTodosPageState createState() =>  _AllTodosPageState();
}


TextEditingController controller = new TextEditingController();
_toggleTodo(Todo todo, bool isChecked){
  todo.isDone =isChecked;
}
Widget _buildItem(BuildContext context, int index){
  final todo = todos[index];

  return CheckboxListTile(
    value: todo.isDone,
    title: Text(todo.title),
    onChanged: (bool isChecked){
      _toggleTodo(todo, isChecked);
    },
  );
}

class  _AllTodosPageState extends State <AllTodosPage> {
Todo _selectedTodo;
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text(widget.title),
      ),
    body: Center(
      child: TodosMaster(todos: widget.todos)
    ),
  );
}
}

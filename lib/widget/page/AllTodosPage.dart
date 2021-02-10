import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodosMaster.dart';

class AllTodosPage extends StatefulWidget {
 AllTodosPage({Key key, this.todos, this.title}) : super(key: key);

  final List<Todo> todos;
  final String title;

  @override
   _AllTodosPageState createState() =>  _AllTodosPageState();
}

class  _AllTodosPageState extends State <AllTodosPage> {
Todo _selectedTodo;
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

   void _onTodoSelected(Todo aTodo){
     setState((){
       _selectedTodo = aTodo;
     });
   }

   void _onTodoRemoved(Todo aTodo){
     setState((){
       _selectedTodo = null;
       widget.todos.remove(aTodo);
       _showDeleteConfirmation();
     });
   }

   void _showDeleteConfirmation(){
     _scaffoldKey.currentState.showSnackBar(
       SnackBar(
         content: Text('Todo deleted'),
         backgroundColor: Colors.green,
       ),
     );
   }


  void _onAddButtonClick(){
    TextEditingController newController = TextEditingController();
    _AllTodosPageState.add(newController);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            (_selectedTodo != null)
             ? TodoDetails(
              todo: _selectedTodo,
              onRemove: this._onTodoRemoved,
                )
            : Container(),
            Expanded(
              child: TodosMaster( //TodosMaster
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
    onPressed: () => OnAddButtonClick(),
      ),
    );
  }
}
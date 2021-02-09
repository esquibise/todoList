import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

class TodoPreview extends StatefulWidget {
  const TodoPreview({Key key, @required this.todo, this.onTap}) : super(key: key);

  final Todo todo;

  final Function onTap;

  @override
  _TodoPreviewState createState() => _TodoPreviewState();
}

class _TodoPreviewState extends State<TodoPreview>{
  Color _getColorAccordingToDoneValue(){
    return (widget.todo.done) ? Colors.green[100] : Colors.amberAccent[100];
  }
  void _onTap(){
    widget.onTap(widget.todo);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColorAccordingToDoneValue(),
      child: ListTile(
        onTap: _onTap,
        title : Text(
          widget.todo.title,
        ),
      ),
    );
  }
}




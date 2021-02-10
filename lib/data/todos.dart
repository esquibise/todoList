import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

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

List<Todo> todos = [
  Todo(title: "Promener le chien", content: "ToDo1", isDone: false),
  Todo(title: "faire les courses", content: "ToDo2", isDone: false),
  Todo(title: "prendre sa douche", content: "ToDo3", isDone: false),
  Todo(title: "nourrir le chat", content: "ToDo4", isDone:  false),
  Todo(title: "Sortir les poubelles", content: "ToDo5", isDone: false),
  Todo(title: "Arroser les fleurs", content: "ToDo6", isDone:  false),
  Todo(title: "Jouer", content: "ToDo7", isDone: false),
  Todo(title: "Dormir", content: "ToDo8", isDone:  false),
  Todo(title: "Faire le menage", content: "ToDo9", isDone: false),
  Todo(title: "changer le bébé", content: "ToDo10", isDone:  false),
  Todo(title: "danser", content: "ToDo11", isDone: false),
  Todo(title: "emmener enfant au cheval", content: "ToDo12", isDone:  false),
  Todo(title: "repasser le linge", content: "ToDo13", isDone: false),
  Todo(title: "faire tourner les serviettes", content: "ToDo14", isDone:  false),
  Todo(title: "manger le chocolat", content: "ToDo15", isDone: false),
];


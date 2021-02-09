import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/data/todos.dart' as data;
import 'package:td_01_to_do_list/widget/page/AllTodosPage.dart';
//import 'package:td_01_to_do_list/widget/page/MyHomePage.dart';

class MyApp extends StatelessWidget {
  final String _title = "My Todo List";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllTodosPage(
        todos: data.todos,
        title: 'AllTodosPage'),
    );
  }
}

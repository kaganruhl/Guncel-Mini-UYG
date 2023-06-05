import 'package:flutter/material.dart';
import 'package:myapp/models/todo.dart';
import 'package:myapp/screens/todolist.dart';
import 'package:myapp/screens/todolistModel2.dart';
import 'package:myapp/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const TodoListModel(),
      initialRoute: "/",
      routes: {
        "/":(context) =>  const TodoList(),
        "todolistmodel":(context) => const TodoListModel(),
      },
    );
  }
}



import 'package:flutter/material.dart';
import 'package:myapp/models/todo.dart';

class TodoDetail extends StatefulWidget {
  final Todo todo;
  const TodoDetail({required this.todo, super.key});

  @override
  State<TodoDetail> createState() => _TodoDetailState();
}

class _TodoDetailState extends State<TodoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.todo.title} detay"),
        actions: [
          Checkbox(onChanged: (newValue) {}, value: widget.todo.isComplated,),
          Icon(
            Icons.star,
            color: widget.todo.isStar? Colors.amber : Colors.black54,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Text(widget.todo.title),
    );
  }
}

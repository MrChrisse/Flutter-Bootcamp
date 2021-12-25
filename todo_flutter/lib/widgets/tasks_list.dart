import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(text: "Buy milk"),
        TaskTile(text: "Buy eggs"),
      ],
    );
  }
}

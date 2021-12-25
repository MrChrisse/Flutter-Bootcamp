import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;

  TaskTile({required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Checkbox(value: false, onChanged: (value) {}),
    );
  }
}

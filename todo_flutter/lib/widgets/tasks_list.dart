import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final curTask = taskData.tasks[index];
            return TaskTile(
              taskTitle: curTask.name,
              isChecked: curTask.isDone,
              deleteTaskCallback: () {
                taskData.deleteTask(curTask);
              },
              checkboxCallback: (checkboxState) {
                taskData.updateTask(curTask);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

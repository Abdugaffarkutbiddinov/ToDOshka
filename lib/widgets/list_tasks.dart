import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoshka/models/task.dart';
import 'package:todoshka/models/task_data.dart';

import 'my_list_tile.dart';

class ListOfTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return MyListTile(
              isChecked: taskData.tasks[index].isCompleted,
              taskName: taskData.tasks[index].taskName,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPress: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.get(),
        );
      },
    );
  }
}

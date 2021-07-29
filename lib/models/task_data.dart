import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:todoshka/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(taskName: 'taskName', isCompleted: false),
    Task(taskName: 'taskName', isCompleted: false),
    Task(taskName: 'taskName', isCompleted: false)
  ];

  int get() {
    return _tasks.length;
  }

  void addTaskData(String newTaskTile) {
    final task = Task(taskName: newTaskTile, isCompleted: false);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.isDone();
    notifyListeners();
  }
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();

  }

}

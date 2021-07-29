class Task {
  final String taskName;
  bool isCompleted;

  Task({required this.taskName, required this.isCompleted});

  void isDone() {
    isCompleted = !isCompleted;
  }

}

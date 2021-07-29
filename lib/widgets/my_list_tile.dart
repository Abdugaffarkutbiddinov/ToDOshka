import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoshka/models/task_data.dart';

class MyListTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function(bool?)? checkboxCallback;
  final Function()? longPress;
  MyListTile({required this.isChecked, required this.taskName, required this.checkboxCallback, required this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.pinkAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPress,
    );
  }
}

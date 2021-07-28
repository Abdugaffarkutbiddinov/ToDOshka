import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'bread',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked, (bool? checkboxState) {
        setState(() {
          isChecked = checkboxState!;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(this.stateIsChecked, this.toggleState);

  final bool stateIsChecked;
  final Function(bool?)? toggleState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.pinkAccent,
      value: stateIsChecked,
      onChanged: toggleState,
    );
  }
}

import 'package:flutter/material.dart';

import 'my_list_tile.dart';
class ListOfTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(40.0),
      children: <Widget>[
        MyListTile(),
        MyListTile()
      ],
    );
  }
}

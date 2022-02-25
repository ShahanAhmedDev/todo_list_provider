import 'package:flutter/material.dart';
import 'package:todo_list_provider/screens/widgets/tasks_tile.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        TaskTile('This is a task'),
        TaskTile('This is a task'),
        TaskTile('This is a task'),

      ],
    );
  }
}

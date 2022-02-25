import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String headingText;

  TaskTile(this.headingText);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(headingText),trailing: Checkbox(value: false, onChanged: (bool? value) {},),);
  }
}

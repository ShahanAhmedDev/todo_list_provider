import 'package:flutter/material.dart';
import 'package:todo_list_provider/model/tasks.dart';
import 'package:todo_list_provider/screens/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> taskList;

  TasksList({Key? key, required this.taskList}) : super(key: key);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  //  refreshNow(Task value){
  //   return tasks.add(value);
  // }



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.taskList[index].isDone, taskTitle: widget.taskList[index].name,
            checkboxCallBack:
                (checkboxState){
              setState(() {
                widget.taskList[index].toggleDone();
              });
            }
        );
      },
    );
  }
}

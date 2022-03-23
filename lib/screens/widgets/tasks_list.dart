import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/model/tasks.dart';
import 'package:todo_list_provider/provider/provider.dart';
import 'package:todo_list_provider/screens/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {

  // final List<Task> taskList;

  TasksList({Key? key}) : super(key: key);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  //  refreshNow(Task value){
  //   return tasks.add(value);
  // }



  @override
  Widget build(BuildContext context) {
    // var taskList = ChangeNotifierProvider(create: (context) => NewTask());
    var taskList = Provider.of<NewTask>(context).tasks;

    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: taskList[index].isDone, taskTitle: taskList[index].name,
            checkboxCallBack:
                (checkboxState){
              setState(() {
                taskList[index].toggleDone();
              });
            }
        );
      },
    );
  }
}


// Widget build(BuildContext context) {
//   // var taskList = ChangeNotifierProvider(create: (context) => NewTask());
//   var taskList = Provider.of<NewTask>(context).tasks;
//
//   return ListView.builder(
//     itemCount: widget.taskList.length,
//     itemBuilder: (context, index) {
//       return TaskTile(
//           isChecked: widget.taskList[index].isDone, taskTitle: widget.taskList[index].name,
//           checkboxCallBack:
//               (checkboxState){
//             setState(() {
//               widget.taskList[index].toggleDone();
//             });
//           }
//       );
//     },
//   );
// }
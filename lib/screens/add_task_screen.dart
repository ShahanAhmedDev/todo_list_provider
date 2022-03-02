import 'package:flutter/material.dart';
import 'package:todo_list_provider/screens/task_screen.dart';
import 'package:todo_list_provider/screens/widgets/tasks_list.dart';
import 'package:todo_list_provider/screens/widgets/tasks_tile.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;
  const AddTaskScreen({Key? key, required this.addTaskCallback}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    String newTask = '';
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              TextField(
                onChanged: (value){
                  // print(newTask);
                  newTask = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height*0.05,),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  // print(newTask);
                  addTaskCallback(newTask);
                  // AddTaskScreen(newTask);
                  // TaskTile(taskTitle: newTask,checkboxCallBack: (bool? value) {  }, isChecked: false,);
                  // TasksList();
                },
                minWidth: width,
                child: const Text('Add',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

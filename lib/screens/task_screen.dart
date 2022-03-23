import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/model/tasks.dart';
import 'package:todo_list_provider/provider/provider.dart';
import 'package:todo_list_provider/screens/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {

  TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // var tasks = ChangeNotifierProvider(create: (context) => NewTask());

  // Widget buildBottomSheet(BuildContext context){
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
                addTaskCallback: (newTask){
                  print(newTask);
                  setState(() {
                    // tasks.add(Task(name: newTask));
                    Provider.of<NewTask>(context,listen: false).addTask(Task(name: newTask));
                  });
                  Navigator.pop(context);
                }
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: width * 0.08,
              right: width * 0.08,
              top: height * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'Todo Bro',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '${Provider.of<NewTask>(context).tasks.length} Tasks',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: TasksList(
                // taskList: Provider.of<NewTask>(context).tasks,
              ),
            ),
          ),
        ],
      ),
      // appBar: AppBar(
      //
      //   title:const  Text("Shahan's Todo's"),
      // ),
    );
  }
}

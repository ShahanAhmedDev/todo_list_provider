import 'package:flutter/material.dart';
import 'package:todo_list_provider/screens/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  // Widget buildBottomSheet(BuildContext context){
  //   return Container(
  //     child: const Center(
  //       child: Text('Test'
  //       ),
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
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
                const Text(
                  '12 Tasks',
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
              child: TasksList(),
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



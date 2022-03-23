import 'package:flutter/material.dart';
import 'package:todo_list_provider/model/tasks.dart';


class NewTask extends ChangeNotifier{
List<Task> tasks = [
  Task(name: "Doodh khareedna hai"),
  Task(name: "Andy bhi"),
  Task(name: "3 Circle Rocks"),
];


addTask(Task task){
  tasks.add(task);
  notifyListeners();
}

}
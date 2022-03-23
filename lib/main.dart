import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/provider/provider.dart';
import 'package:todo_list_provider/screens/task_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewTask>(
      create: (context) => NewTask(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}



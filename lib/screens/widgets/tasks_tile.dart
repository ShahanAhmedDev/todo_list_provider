import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.isChecked, required this.taskTitle, required  this.checkboxCallBack});

  final bool isChecked;
  final ValueChanged<bool?>? checkboxCallBack;
  final String taskTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style:  TextStyle( decoration:isChecked? TextDecoration.lineThrough: null)),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, onChanged:checkboxCallBack,
        // onChanged: toggleCheckBoxState,
        // onChanged: (newValue) {
        //
        //   checkboxState = !checkboxState;
        // }
      ),
    );
  }
}

// class CustomCheckBox extends StatelessWidget {
//    final bool checkboxState;
//    ValueChanged<bool?>? toggleCheckBoxState;
//   CustomCheckBox({ required this.checkboxState,this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState, onChanged: (bool? value) {  },
//       // onChanged: toggleCheckBoxState,
//       // onChanged: (newValue) {
//       //
//       //   checkboxState = !checkboxState;
//       // }
//     );
//   }
// }

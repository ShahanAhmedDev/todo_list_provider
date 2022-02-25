import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
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
              const TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height*0.05,),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {},
                minWidth: width,
                child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

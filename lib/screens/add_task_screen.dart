import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = 'task title';

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  }),
              SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

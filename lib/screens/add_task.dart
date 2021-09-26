import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallBack;

  AddTask(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (text) {
                newTaskTitle = text;
                print(newTaskTitle);
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              onPressed: addTaskCallBack(newTaskTitle),
            )
          ],
        ),
      ),
    );
  }
}

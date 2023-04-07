import 'package:flutter/material.dart';

class MyNotesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter your note'),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Add Note'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
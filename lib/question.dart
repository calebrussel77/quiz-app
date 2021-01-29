import 'package:flutter/material.dart';

//custom widget
class Question extends StatelessWidget {
  final String questionText; //can not change in the class widget

  Question(this.questionText); //constructor with position argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

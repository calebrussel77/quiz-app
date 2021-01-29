import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texButton;
  final Function selectHandler;

  Answer(this.texButton, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Colors.grey[300],
          child: Text(
            texButton,
            textAlign: TextAlign.center,
          ),
          onPressed: selectHandler),
    );
  }
}

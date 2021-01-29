import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      resultText = "You are awesome and innocent !";
    } else if (totalScore <= 12) {
      resultText = "Pretty likeable !";
    } else if (totalScore <= 16) {
      resultText = "You are ... Strange ?";
    } else {
      resultText = "You are so bad !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            '''
You got $totalScore points and $resultPhrase ''',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          RaisedButton(
              child: Text(
                "Reset the Quiz !",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              textColor: Colors.green[700],
              onPressed: resetQuiz)
        ],
      ),
    );
  }
}

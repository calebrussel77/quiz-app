import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(
              answerText["text"], () => answerQuestion(answerText["score"]));
        }).toList()
      ],
    );
  }
}

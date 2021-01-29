import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = <Map>[
    {
      "questionText": "what's your favorite actor ?",
      "answers": [
        {"text": "Johnny deep", "score": 4},
        {"text": "Syslvester Stalone", "score": 6},
        {"text": "Dolph Lungren", "score": 2},
        {"text": "Jack Bauer", "score": 10},
      ],
    },
    {
      "questionText": "what's your favorite Tech ?",
      "answers": [
        {"text": "Next js", "score": 9},
        {"text": "React js", "score": 3},
        {"text": "Flutter", "score": 5},
        {"text": "Node js", "score": 2},
      ]
    },
    {
      "questionText": "what's your favorite Animal ?",
      "answers": [
        {"text": "Rabbit", "score": 8},
        {"text": "Lion", "score": 10},
        {"text": "Elephant", "score": 3},
        {"text": "Birds", "score": 7}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print("No more question");
    }
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
          backgroundColor: Colors.green[700],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

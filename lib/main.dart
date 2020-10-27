import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\' your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 20},
          {'text': 'Blue', 'score': 30},
          {'text': 'White', 'score': 40}
        ]
      },
      {
        'questionText': 'What\' your favorite animal?',
        'answers': [
          {'text' : 'Rabbit' , 'score' : 10},
          {'text' : 'Horse' , 'score' : 20},
          {'text' : 'Lion' , 'score' : 30}
        ]
      },
      {
        'questionText': 'What\' your favorite instructor?',
        'answers': [
          {'text' : 'Chetan' , 'score' : 10},
          {'text' : 'Chetan' , 'score' : 10},
          {'text' : 'Chetan' , 'score' : 10},
          {'text' : 'Chetan' , 'score' : 10},
        ]

      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
            child: _questionIndex < questions.length
                ? Quiz(questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
                : Center(
                child: Text("You did it.\n score $totalScore"))),
      ),
    );
  }
}

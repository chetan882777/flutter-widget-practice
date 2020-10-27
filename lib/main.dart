import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\' your favorite color?',
      'What\' your favorite animal?'
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Ans 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 3"),
              onPressed: answerQuestion,
            ),
          ],
        )),
      ),
    );
  }
}

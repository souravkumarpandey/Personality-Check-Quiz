import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 5},
        {'text': 'white', 'score': 3},
        {'text': 'orange', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your  favrite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'snake', 'score': 5},
        {'text': 'elephant', 'score': 3},
        {'text': 'lion', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'aniket', 'score': 10},
        {'text': 'sourav', 'score': 5},
        {'text': 'rupesh', 'score': 3},
        {'text': 'ritik', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var totalScore=0;
  void _resetQuiz(){
     setState(() {
      _questionIndex = 0;
      totalScore=0;

    });
   
  }
  void _answerQuestion(int score) {
    totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer chosesn');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(totalScore,_resetQuiz),
      ),
    );
    throw UnimplementedError();
  }
}

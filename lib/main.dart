import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer chosesn');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'white'],
      },
      {
        'questionText': 'What\'s your  favrite animal?',
        'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['aniket', 'riik', 'sourv', 'rupesh'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),
            
          ...(question[_questionIndex]['answers']as List<String>).map((answer){
            return Answer(_answerQuestion,answer);
          }).toList()
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

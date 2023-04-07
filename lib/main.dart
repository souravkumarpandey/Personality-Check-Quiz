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
      // 'what\'s your favorite number?',
      // 'what\'s your favorite color?',
      // 'what\'s your favorite animal?',
      {},
      {},
      {},
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Question(question[_questionIndex],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

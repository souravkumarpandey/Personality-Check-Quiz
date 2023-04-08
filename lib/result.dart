import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 8) {
      resultText = 'your are awsm and innocent';
    } else if (resultScore <= 12) {
      resultText = 'your are likable';
    } else if (resultScore <= 16) {
      resultText = 'your are strange';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton(
            child: Text('Resart Quiz'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}

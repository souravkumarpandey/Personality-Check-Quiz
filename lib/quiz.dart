import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final VoidCallback answerQuestion;
  Quiz({
    @required this.question,
    @required this.questionIndex,
    @required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
    throw UnimplementedError();
  }
}

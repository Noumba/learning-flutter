import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['question'] as String),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) => Answer(
              () => answerQuestion(answer['score']), answer['text'] as String))
          .toList()
    ]);
  }
}

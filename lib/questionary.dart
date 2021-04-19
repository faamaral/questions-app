import 'package:flutter/material.dart';
import 'package:questions/answer.dart';
import 'package:questions/question.dart';

class Questionary extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) answer;

  Questionary({
    @required this.selectedQuestion,
    @required this.questions,
    @required this.answer
    });

    bool get haveSelectedQuestion {
    return selectedQuestion < questions.length;
  }
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        haveSelectedQuestion ?
         questions[selectedQuestion]['answers'] :
          null;
    return Column(
      children: [
        Question(questions[selectedQuestion]['text']),
        ...answers.map((e) => Answer(e['text'], () => answer(e['score']))).toList(),
      ],
    );
  }
}

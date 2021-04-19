import 'package:flutter/material.dart';
import 'package:questions/questionary.dart';
import 'package:questions/result.dart';

import './question.dart';
import './answer.dart';

main() {
  runApp(new _QuestionsApp());
}

class __QuestionsAppState extends State<_QuestionsApp> {
  final String msg = "Olá mundo";
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'text': 'Qual é a sua materia favorita?',
      'answers': [
        {'text': 'Algoritmos', 'score': 10},
        {'text': 'Banco de dados', 'score': 8},
        {'text': 'Redes', 'score': 6},
        {'text': 'POO', 'score': 4},
        {'text': 'Eng. de Software', 'score': 2}
      ]
    },
    {
      'text': 'Você ja reprovou em alguma das materias anteriores?',
      'answers': [
        {'text': 'Sim', 'score': 1},
        {'text': 'Não', 'score': 10}
      ]
    }
  ];

  bool get haveSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  void restartQuestionary() {
    setState(() {
      this._selectedQuestion = 0;
      this._totalScore = 0;
    });
  }

  void _answer(int score) {
    if (haveSelectedQuestion) {
      setState(() {
        _selectedQuestion += 1;
        _totalScore += score;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Questionario"),
            backgroundColor: Colors.black87,
          ),
          body: haveSelectedQuestion
              ? Questionary(
                  selectedQuestion: _selectedQuestion,
                  questions: _questions,
                  answer: _answer)
              : Result(_totalScore, restartQuestionary)),
    );
  }
}

class _QuestionsApp extends StatefulWidget {
  @override
  __QuestionsAppState createState() {
    // TODO: implement createState
    return __QuestionsAppState();
  }
}

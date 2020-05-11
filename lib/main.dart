import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyQuestionApp());

class MyQuestionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyQuestionAppState();
  }
}

class _MyQuestionAppState extends State<MyQuestionApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
       _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorate color?',
      'answer': [
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorate animal?',
      'answer': [
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 8},
        {'text': 'Pig', 'score': 3},
        {'text': 'Cow', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorate city?',
      'answer': [
        {'text': 'Carmen', 'score': 2},
        {'text': 'Batuan', 'score': 3},
        {'text': 'Bilar', 'score': 6},
        {'text': 'Langub', 'score': 2},
      ],
    },
    {
      'questionText': 'Ang galing ni melchor?',
      'answer': [
        {'text': 'Tularan', 'score': 1},
        {'text': 'Mo', 'score': 6},
        {'text': 'Si', 'score': 4},
        {'text': 'Melchor', 'score': 6},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Questions App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}

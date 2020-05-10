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

  final _questions = const[
      {
        'questionText': 'What\'s your favorate color?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorate animal?',
        'answer': ['Dog', 'Cat', 'Pig', 'Cow'],
      },
      {
        'questionText': 'What\'s your favorate city?',
        'answer': ['Carmen', 'Batuan', 'Bilar', 'Langub'],
      }, 
      {
        'questionText': 'Ang galing ni melchor?',
        'answer': ['Tularan', 'Mo', 'Si', 'Melchor'],
      },
    ];

  void _answerQuestion() {

    if(_questionIndex < _questions.length){

    }
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
      body: _questionIndex < _questions.length ? 
      Quiz(
        answerQuestion: _answerQuestion, 
        questionIndex: _questionIndex, 
        questions: _questions,) 
      : Result(),
    ));
  }
}

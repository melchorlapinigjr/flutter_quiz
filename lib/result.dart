import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable.";
    } else if (resultScore <= 16) {
      resultText = "You are strange?";
    } else {
      resultText = "Your bad.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: resetHandler, 
          splashColor: Colors.blue,
          padding: EdgeInsets.all(8.0),
          color: Colors.redAccent,
          textColor: Colors.white,
        ),
      ],
      ), 
    );
  }
}

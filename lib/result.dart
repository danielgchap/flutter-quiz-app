import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    String result;
    if (resultScore <= 8) {
      result = 'You are awsome and innocent!';
    } else if (resultScore <= 12) {
      result = 'Pretty likable';
    } else if (resultScore <= 16) {
      result = 'You are strange';
    } else {
      result = 'You are so bad';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}

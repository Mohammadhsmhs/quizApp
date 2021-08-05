import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() reset;

  String get finalResult {
    String scoreResult;
    if (score > 20)
      scoreResult = 'you are damn awsome';
    else if (score > 13)
      scoreResult = 'not bad';
    else
      scoreResult = 'yeah ... I don\'t really like you';
    return scoreResult;
  }

  Result(this.score, this.reset);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          finalResult,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      TextButton(
        onPressed: reset,
        child: Text('Restart'),
        style: TextButton.styleFrom(primary: Colors.green),
      )
    ]);
  }
}

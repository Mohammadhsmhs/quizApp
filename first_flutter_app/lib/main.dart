import 'package:first_flutter_app/quiz.dart';
import 'package:first_flutter_app/result.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _finalScore = 0;

  get questionindex => _questionIndex;

  set questionindex(questionindex) {
    _questionIndex = questionindex;
  }

  void _reset() {
    setState(() {
      questionindex = 0;
      _finalScore = 0;
    });
  }

  static const _questions = [
    {
      'questionText': 'what\'s your favorit food ?',
      'answers': [
        {'text': 'kabab', 'score': 10},
        {'text': 'pizza', 'score': 5},
        {'text': 'ghorme sabzi', 'score': 1},
        {'text': 'lasagna', 'score': 12},
      ]
    },
    {
      'questionText': 'what\'s your favorit animal?',
      'answers': [
        {'text': 'khar', 'score': 2},
        {'text': 'barre', 'score': 10},
        {'text': 'gavmish', 'score': 5},
      ]
    },
  ];

  void _answerQuestion(int score) {
    print("the answer was chosen!");
    _finalScore += score;
    setState(() => questionindex++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: questionindex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_finalScore, _reset),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyBrilliantApp());
// }

void main() => runApp(MyBrilliantApp());

class MyBrilliantApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyBrilliantAppState();
  }
}

class _MyBrilliantAppState extends State<MyBrilliantApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // re-render after pressed button
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Ben', 'Ben', 'Ben', 'Ben'],
      },
    ];

    // var dummy = const ['Hello'];
    // dummy.add('Ben');
    // print(dummy);
    // dummy = [];
    // question = [];  // does not work if questions is a const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

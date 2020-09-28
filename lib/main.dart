import 'package:flutter/material.dart';

import './question.dart';

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
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answwer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answwer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answwer 3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

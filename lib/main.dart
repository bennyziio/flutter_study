import 'package:flutter/material.dart';

// void main() {
//   runApp(MyBrilliantApp());
// }

void main() => runApp(MyBrilliantApp());

class MyBrilliantApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyBrilliantAppState();
  }
}

class MyBrilliantAppState extends State<MyBrilliantApp> {
  var questionIndex = 0;

  void answerQuestion() {
    // re-render after pressed button
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answwer 1'),
              onPressed: answerQuestion,
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

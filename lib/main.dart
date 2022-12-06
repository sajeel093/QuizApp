import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionindex = 0;
  void Button() {
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = ['what is your fav color?', 'what is your fav animal?'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('QuizApp'),
          ),
          body: Column(
            children: [
              Question(question[questionindex]),
              ElevatedButton(onPressed: Button, child: Text('answer1')),
              ElevatedButton(onPressed: Button, child: Text('answer2')),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          questionindex = questionindex + 1;
                        })
                      },
                  child: Text('answer3')),
            ],
          )),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

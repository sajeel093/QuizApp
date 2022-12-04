import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void Button() {
    print('pressed');
  }

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = ["what's your fav animal?", "what's your fav color?"];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('QuizApp'),
          ),
          body: Column(
            children: [
              Text('The question!'),
              ElevatedButton(onPressed: Button, child: Text('answer1')),
              ElevatedButton(onPressed: Button, child: Text('answer2')),
              ElevatedButton(
                  onPressed: () => {print('answer 3')}, child: Text('answer3')),
            ],
          )),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

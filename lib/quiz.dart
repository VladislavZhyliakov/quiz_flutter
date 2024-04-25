import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activePage = 'home-page';

  void switchPage() {
    setState(() {
      activePage = 'questions-page';
    });
  }

  @override
  Widget build(context) {
    Widget pageWidget = HomePage(switchPage);

    if(activePage == 'questions-page'){
      pageWidget = const QuestionsPage();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: pageWidget,
        ),
      ),
    );
  }
}

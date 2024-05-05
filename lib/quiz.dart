import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/results_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswers = [];
  var activePage = 'home-page';

  void switchPage() {
    setState(() {
      activePage = 'questions-page';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activePage = 'results-page';
      });
    }
  }

  void retryQuiz() {
    setState(() {
      activePage = 'home-page';
    });
  }

  @override
  Widget build(context) {
    Widget pageWidget = HomePage(switchPage);

    if(activePage == 'questions-page'){
      pageWidget = QuestionsPage(onSelectAnswer: chooseAnswer);
    } 
    else if(activePage == 'results-page'){
      pageWidget = ResultPage(chosenAnswers: selectedAnswers, retryQuiz: retryQuiz);
    }
    else if(activePage == 'home-page'){
      pageWidget = HomePage(switchPage);
      selectedAnswers = [];
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

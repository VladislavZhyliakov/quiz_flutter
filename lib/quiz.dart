import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? activePage;

  @override
  void initState() {
    activePage = HomePage(switchPage);
    super.initState();
  }

  void switchPage(){
    setState(() {
      activePage = const QuestionsPage();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: activePage,
        ),
      ),
    );
  }
}
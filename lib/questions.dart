import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsPage extends StatefulWidget{
  const QuestionsPage ({super.key});

  @override
  State<QuestionsPage> createState(){
    return _QuestionsPageState();
  }
}

class _QuestionsPageState extends State<QuestionsPage>{
  @override
  Widget build(context){
    return const StyledText('QuestionsPage', 50);
  }
}
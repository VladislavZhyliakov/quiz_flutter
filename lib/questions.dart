import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/styled_question_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() {
    return _QuestionsPageState();
  }
}

class _QuestionsPageState extends State<QuestionsPage> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questionIndex < questions.length - 1)
      {
        questionIndex++;
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledQuestionText(currentQuestion.text, 16),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}

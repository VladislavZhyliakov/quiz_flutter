import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 65),
          const StyledText('Learn Flutter the fun way!', 30),
          const SizedBox(height: 65),
          OutlinedButton(
            onPressed: () {},
            child: const StyledText('Start Quiz', 15),
          )
        ],
      ),
    );
  }
}

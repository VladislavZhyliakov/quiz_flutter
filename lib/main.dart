import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: const HomePage(),
        ),
      ),
    ),
  );
}

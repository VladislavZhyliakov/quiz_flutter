import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.outputText, this.textFontSize, {super.key});

  final String outputText;
  final double textFontSize;

  @override
  Widget build(context){
    return Text(
      outputText, 
      style: TextStyle(
        color: Colors.white,
        fontSize: textFontSize,
      ),
    );
  }
}
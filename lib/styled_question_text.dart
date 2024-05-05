import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledQuestionText extends StatelessWidget{
  const StyledQuestionText(this.outputText, this.textFontSize, {super.key});

  final String outputText;
  final double textFontSize;

  @override
  Widget build(context){
    return Text(
      outputText, 
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 47, 29, 54),
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    );
  }
}
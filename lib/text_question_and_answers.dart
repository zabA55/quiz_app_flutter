import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextQuestionAndAnswers extends StatelessWidget {

  const TextQuestionAndAnswers({super.key, required this.text, required this.color});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: GoogleFonts.lato(
          color: color,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
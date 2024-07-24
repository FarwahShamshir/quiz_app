import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 24, // Slightly reduced the text size for better fit
          color: Color(0xFF37423D), // Text color matching the theme
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

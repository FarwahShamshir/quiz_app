import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;

  Result(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Completed!',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF37423D), // Matching color for result text
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Your Score: $score/$totalQuestions',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF37423D), // Matching color for score text
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MyApp()),
              ); // Restarting the app
            },
            child: Text('Restart Quiz'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Color(0xFF754043), // Text color for the button
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

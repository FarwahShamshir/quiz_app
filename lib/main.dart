import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'Which of the following is the command to create a new Flutter project?',
      'answers': [
        {'text': 'flutter create', 'score': 1},
        {'text': 'flutter new', 'score': 0},
        {'text': 'flutter init', 'score': 0},
        {'text': 'flutter start', 'score': 0}
      ],
    },
    {
      'questionText': 'What is the primary language used to develop Flutter apps?',
      'answers': [
        {'text': 'Dart', 'score': 1},
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Swift', 'score': 0}
      ],
    },
    {
      'questionText': 'Which widget in Flutter is used to create an app bar?',
      'answers': [
        {'text': 'AppBar', 'score': 1},
        {'text': 'ToolBar', 'score': 0},
        {'text': 'NavBar', 'score': 0},
        {'text': 'TopBar', 'score': 0}
      ],
    },
    {
      'questionText': 'What is the purpose of the pubspec.yaml file in a Flutter project?',
      'answers': [
        {'text': 'Manage project dependencies', 'score': 1},
        {'text': 'Define widget properties', 'score': 0},
        {'text': 'Create project layouts', 'score': 0},
        {'text': 'Compile the project', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following widgets is used for flexible layouts in Flutter?',
      'answers': [
        {'text': 'Flexible', 'score': 1},
        {'text': 'Flex', 'score': 0},
        {'text': 'Expander', 'score': 0},
        {'text': 'FlexBox', 'score': 0}
      ],
    },
    {
      'questionText': 'Which method is used to change the state of a StatefulWidget in Flutter?',
      'answers': [
        {'text': 'setState()', 'score': 1},
        {'text': 'changeState()', 'score': 0},
        {'text': 'updateState()', 'score': 0},
        {'text': 'refresh()', 'score': 0}
      ],
    },
    {
      'questionText': 'What is the correct way to add padding around a widget in Flutter?',
      'answers': [
        {'text': 'Padding widget', 'score': 1},
        {'text': 'Margin widget', 'score': 0},
        {'text': 'Space widget', 'score': 0},
        {'text': 'Inset widget', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following is NOT a type of ListView in Flutter?',
      'answers': [
        {'text': 'ListView.basic', 'score': 0},
        {'text': 'ListView.builder', 'score': 0},
        {'text': 'ListView.separated', 'score': 0},
        {'text': 'ListView.custom', 'score': 1}
      ],
    },
    {
      'questionText': 'In Flutter, which widget is used to show a progress indicator?',
      'answers': [
        {'text': 'CircularProgressIndicator', 'score': 1},
        {'text': 'ProgressBar', 'score': 0},
        {'text': 'LoadingIndicator', 'score': 0},
        {'text': 'ActivityIndicator', 'score': 0}
      ],
    },
    {
      'questionText': 'How do you define a route in Flutter?',
      'answers': [
        {'text': 'Using the MaterialPageRoute', 'score': 1},
        {'text': 'Using the Navigator.pushNamed', 'score': 1},
        {'text': 'Using the RouteWidget', 'score': 0},
        {'text': 'Using the PageRouteBuilder', 'score': 1}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF9A8873), // Background color for the Scaffold
        appBar: AppBar(
          title: const Text(
            'Flutter Quiz',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color(0xFF754043), // AppBar color
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(
              _questions[_questionIndex]['questionText'] as String,
            ),
            const  SizedBox(height: 40),
            ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
                .map((answer) {
              return _buildAnswerButton(
                  answer['text'] as String, answer['score'] as int);
            }),
          ],
        )
            : Result(_totalScore, _questions.length),
      ),
    );
  }

  Widget _buildAnswerButton(String answerText, int score) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: 300.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: const Color(0xFF754043), // Button color
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset:const Offset(2, 4),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () => _answerQuestion(score),
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 16, // Reduced text size to fit within the box
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

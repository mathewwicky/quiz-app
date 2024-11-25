import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //active screen can also be null
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);

  //   super.initState();
  // }

// Alternativally

  var activeScreen = 'start-screen';

  //Add method
  void switchScreen() {
    setState(() {
      // setState help to re-excute the build method
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(167, 53, 1, 142),
                Color.fromARGB(203, 133, 74, 234),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : const QuestionsScreen(), // we use ternary expression a feature in dart for true or false
        ),
      ),
    );
  }
}

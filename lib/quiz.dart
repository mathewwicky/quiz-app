import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen'; // an identifier for the start screen

  //Add method
  void switchScreen() {
    setState(() {
      // setState help to re-execute the build method
      activeScreen = "questions-screen";
    });
  }

  //we can have another method for storing the selected answers for a particular qtn

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //Widget screenWidget = StartScreen(switchScreen);
      Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen( choosenAnswers: selectedAnswers,);
    }

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
          child: screenWidget,
          // child: activeScreen == "start-screen"
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(
          //         onSelectedAnswer: chooseAnswer,
          //       ), // we use ternary expression a feature in dart for true or false
        ),
      ),
    );
  }
}

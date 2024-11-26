import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key}); // constractor function accepts named argument   

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // instead of taking of all the available vertiacal space it only takes the minimum vertical space as needed
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold,),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {
            //Here is the code once the button is pressed
              startQuiz();
            },
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

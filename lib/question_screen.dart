import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize
            .min, // instead of taking of all the available vertiacal space it only takes the minimum vertical space as needed

        children: [
          Text(
            'The Question.....',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: 'answer Text',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'answer Text',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'answer Text',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

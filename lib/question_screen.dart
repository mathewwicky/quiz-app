import 'package:flutter/material.dart';

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
          Text('The Question.....'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 3'),
          ),
        ],
      ),
    );
  }
}

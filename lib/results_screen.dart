import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         margin: EdgeInsets.all(40),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text('You answer x out of y questions correctly'),
            SizedBox(height: 40,),
            
            Text('List of answers and questions'),

            TextButton(onPressed: () {}, 
            child: Text('Rest Test'),),


          ],
        ),
      ),
    );
  }
}

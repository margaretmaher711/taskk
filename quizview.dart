import 'package:flutter/material.dart';

import 'answers.dart';
import 'data.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  data dd = new data();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            dd.quistionList[0],
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(child: answer()),
      ],
    );
    ;
  }
}

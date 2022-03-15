import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1gdsc/answers.dart';
import 'package:task1gdsc/data.dart';
import 'package:task1gdsc/quizview.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  QuizView qv = new QuizView();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          itemCount: 2,
          itemBuilder: (context, index) => QuizView(),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20,
          ),
        ),
      ),
    ]);
    // return ListView.builder(
    //     //shrinkWrap: true,
    //
    //     itemCount: 1,
    //     itemBuilder: (context, i) => QuizView());
  }
}

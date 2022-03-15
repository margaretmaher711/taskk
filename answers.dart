import 'package:flutter/material.dart';
import 'package:task1gdsc/data.dart';

class answer extends StatefulWidget {
  const answer({Key? key}) : super(key: key);

  @override
  _answerState createState() => _answerState();
}

class _answerState extends State<answer> {
  data d = new data();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListTile(
            tileColor: Colors.grey,
            selectedColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32))),
            //selected: true,
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Text(d.leters[i]),
            ),
            title: Text(d.answersList[0][i]),
            onTap: () => print("ListTile")

            //  trailing: Icon(Icons.add),
            ),
      ),
      separatorBuilder: (context, i) => SizedBox(
        height: 10,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 24,
      ),
      Container(
        width: 414,
        height: 250,
        child:
            Image.asset('assets/images/freedom.png',
            fit: BoxFit.cover,
            ),
    ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}

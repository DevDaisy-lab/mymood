import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(left: 60, top: 5, right: 60, bottom: 5),
      child: RaisedButton(

        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.yellow[200],
        textColor: Colors.green,
        child: Text(answerText,
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w600),),
        onPressed: selectHandler,
      ),
    );
  }
}

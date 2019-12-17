import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final List<String> answerText;

  Result(this.answerText, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 250,
                width: 250,
                child: ShaderMask(
                    shaderCallback: (img) {
                      return LinearGradient(
                        begin: Alignment(0.0, 0.0),
                        end: Alignment.bottomRight,
                        colors: [ Colors.transparent,Colors.lightGreen[400]],
                      ).createShader(Rect.fromLTRB(0, 0, img.width, img.height));
                    },
                    blendMode: BlendMode.multiply,
                    child: Image.asset('assets/images/pic2.png',
                    fit: BoxFit.cover,)),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Today you are:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: answerText.length,
            itemBuilder: (context, index) {
              return Container(
                  margin:
                      EdgeInsets.only(left: 60, top: 0, right: 60, bottom: 0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    margin: EdgeInsets.all(5),
                    child: Container(
                      height: 40,
                      child: Center(
                        child: Text(
                          answerText[index],
                          style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ));
            },
          ),
        ),
        Container(
          width: 200,
          height: 100,
          margin: EdgeInsets.all(10),
          child: FlatButton(
              child: Text(
                'Reset Quiz',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: resetHandler),
        ),
      ],
    );
  }
}

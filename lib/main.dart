import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What color do you like today?',
      'answers': [
        {'text': 'Blue', 'value': 'Calm'},
        {'text': 'Red', 'value': 'Bold'},
        {'text': 'Orange', 'value': 'Friendly'},
        {'text': 'Brown', 'value': 'Simple'},
        {'text': 'White', 'value': 'Innocent'},
        {'text': 'Black', 'value': 'Part mood'}
      ]
    },
    {
      'questionText': 'What music do you like to today?',
      'answers': [
        {'text': 'Pop', 'value': 'A high self-esteem'},
        {'text': 'Rap', 'value': 'Sensing'},
        {'text': 'Rock', 'value': 'Debater'},
        {'text': 'Metal', 'value': 'Creative'},
        {'text': 'Classical', 'value': 'Intuition'},
        {'text': 'R&B', 'value': 'Emotional'}
      ]
    },
    {
      'questionText': 'What sport do you like today?',
      'answers': [
        {'text': 'Football', 'value': 'Future'},
        {'text': 'Soccer', 'value': 'Organized'},
        {'text': 'Baseball', 'value': 'Patient'},
        {'text': 'Tennis', 'value': 'Aggressive'},
        {'text': 'Golf', 'value': 'Smartest'},
        {'text': 'Basketball', 'value': 'Like Praise'}
      ]
    },
    {
      'questionText': 'How do you look today?',
      'answers': [
        {'text': 'Sporty', 'value': 'Optimistic'},
        {'text': 'Clean and Simple', 'value': 'Kind'},
        {'text': 'Make a Statement', 'value': 'Charismatic'},
        {'text': 'Free - Spirited', 'value': 'Enthusiastic'},
        {'text': 'Trend - Setter', 'value': 'Helpful'},
        {'text': 'Homestead Chic', 'value': 'Productive'}
      ]
    },
    {
      'questionText': 'What car you would drive today?',
      'answers': [
        {'text': 'Mercedes', 'value': 'King'},
        {'text': 'BMW', 'value': 'Rumbling engine'},
        {'text': 'Ferrari', 'value': 'Refined'},
        {'text': 'Nissan', 'value': 'Practical'},
        {'text': 'Lomborghini', 'value': 'Exotic'},
        {'text': 'Porsche', 'value': 'Boss'}
      ]
    },
  ];

  List<String> _answers = List<String>();

  var _questionIndex = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _answers.clear();
    });
  }

  void _answerQuestion(String answerText) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _answers.add(answerText);
    });
    print(_questionIndex);
    print(answerText);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[400],
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_answers, _resetQuiz),
      ),
    );
  }
}

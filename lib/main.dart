import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizpertemuan2/answer.dart';
import 'package:quizpertemuan2/question.dart';
import 'package:quizpertemuan2/quiz.dart';
import 'package:quizpertemuan2/result.dart';

//Run|Debug|Profile
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  } 
}

class _MyAppState extends State<MyApp> {

final _questions = const [
      {'questionText' : 'what\'s your favorite color?',
      'answer'  : [
        {'text' : 'Black', 'Score':10},
        {'text' : 'Blue', 'Score':8},
        {'text' : 'Red', 'Score':5},
        {'text' : 'Green', 'Score':3},
        {'text' : 'Yellow', 'Score':1},
      ]
      },

      {'questionText' : 'What\'s your favorite Animal?',
      'answer'  : [
        {'text' : 'cat', 'Score' : 10},
        {'text' : 'Dog', 'Score' : 8},
        {'text' : 'Pig', 'Score' : 6},
        {'text' : 'Gekko', 'Score' : 4},
        ],
      },
      {
        'questionText' : 'what\'s your favorite day ?',
        'answer' : [
          {'text' : 'Monday', 'Score' : 10},
          {'text' : 'Tuesday', 'Score' : 8},
          {'text' : 'Wednesday', 'Score' : 7},
          {'text' : 'Thursday', 'Score' : 5},
          {'text' : 'Friday', 'Score' : 4},
          {'text' : 'Saturday', 'Score' : 2},
          {'text' : 'Sunday', 'Score' : 1},
        ],
      },

      ];

  var _questionIndex = 0;
  var _totalScore = 0;

void _resetQuiz(){
  setState(() {
    _questionIndex = 0;
    _totalScore = 0;
  });
}

  void _answerQuestion(int score){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('Kami Punya Pertanyaan Lagi!');
    }else{
      print('Sudah Tidak Ada Pertanyaan !');
    }
}

  @override
  Widget build(BuildContext context){
    
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text ('Quiz'),
        ), //AppBar
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _questions,
              )
              : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}


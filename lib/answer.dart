import 'dart:convert';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

Answer(this.selectHandler, this.answerText);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
              style : ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.purple,          
              ),
      child: Text(answerText),
       onPressed: selectHandler,
      ),
    );
  }
}
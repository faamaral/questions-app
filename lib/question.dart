import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  Question(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.blueGrey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';

main() {
  runApp(new QuestionsApp());
}

class QuestionsApp extends StatelessWidget {
  final String msg = "Olá mundo";
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
          backgroundColor: Colors.black87,
        ),
        body: Text(msg),
      ),
    );
  }
}

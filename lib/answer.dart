import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelect;
  Answer(this.text, this.onSelect);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,

        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14
        ),
        ),
        onPressed: onSelect,
      ),
    );
  }
}

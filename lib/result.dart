import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final void Function() restart;

  Result(this.totalScore, this.restart);

  String get printResult {
    if (totalScore < 5) {
      return 'Ta no curso errado!';
    } else if (totalScore < 10) {
      return 'Tente focar em outras materias';
    } else {
      return 'Siga nessa area';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            printResult,
            style: TextStyle(fontSize: 35),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.red),
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 18
            ),
          ),
          onPressed: this.restart,
        )
      ],
    );
  }
}

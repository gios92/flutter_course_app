import 'package:flutter/material.dart';

//il widget StatelessWidget è SENZA STATO
class Question extends StatelessWidget {
  //il valore 'final' ci fà notare che il valore non cambierà mai dopo la sua inizializzazione qui nel costruttore.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}

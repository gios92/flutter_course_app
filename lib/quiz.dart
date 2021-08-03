import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        //'...' spred operatore - questo operatore di diffusione quello che fà è: prendere un elenco, estrae tutti i valori di quell'elenco e li aggiunge
        // all'elenco circostante come valori individuali in modo da non aggiungere una lista nell'elenco.
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
        //NB: map metodo non cambia l'elenco originale delle domande. Genera invece una nuova lista basata sulla vecchia lista e quindi la trasformazione che facciamo
        //nel corpo la passiamo al metodo map.
      ],
    );
  }
}

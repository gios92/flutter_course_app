import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//funzione eseguita quando l'app viene lanciata

// void main() {
//   runApp(MyApp());
// }

//chiamiamo il metodo main con la notazione 'arrow function'
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    //funzione che impone a flutter di eseguire il rendering dell'interfaccia utente nuovamente.
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // si utilizza la definizione della variabile 'final' se un valore non cambia dal momento in cui viene eseguito il programma.
    //è perciò un valore costante di runtime.
    final questions = [
      //questa è la sintassi per inizializzare una 'map' che può essere anche inizializzata con Map()
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Monkey', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite football player?',
        'answers': ['Messi', 'Ronaldo', 'Mbappe', 'Ronaldinho'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          // backgroundColor: Color(0xffC19556),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            //'...' spred operatore - questo operatore di diffusione quello che fà è: prendere un elenco, estrae tutti i valori di quell'elenco e li aggiunge
            // all'elenco circostante come valori individuali in modo da non aggiungere una lista nell'elenco.
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
            //NB: map metodo non cambia l'elenco originale delle domande. Genera invece una nuova lista basata sulla vecchia lista e quindi la trasformazione che facciamo
            //nel corpo la passiamo al metodo map.
          ],
        ),
      ),
    );
  }
}

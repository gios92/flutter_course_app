import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  // si utilizza la definizione della variabile 'final' se un valore non cambia dal momento in cui viene eseguito il programma.
  //è perciò un valore costante di runtime.
  final _questions = const [
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
  int _questionIndex = 0;

  void _answerQuestion() {
    //funzione che impone a flutter di eseguire il rendering dell'interfaccia utente nuovamente.
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    print('oh yes!!!everything work fine!!!');
    if (_questionIndex < _questions.length) {
    } else {
      print('oh no!!! we have more questions!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            // backgroundColor: Color(0xffC19556),
            backgroundColor: Colors.blue,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result()),
    );
  }
}

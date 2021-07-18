import 'package:flutter/material.dart';

//funzione eseguita quando l'app viene lanciata

// void main() {
//   runApp(MyApp());
// }

//chiamiamo il metodo main con la notazione 'arrow function'
void main() => runApp(MyApp());

int questionIndex = 0;

void rispostaAllaDomanda() {
  questionIndex = questionIndex + 1;
  print(questionIndex);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('La mia prima applicazione in Flutter'),
              backgroundColor: Color(0xffC19556),
            ),
            body: Center(
              child: Body(),
            )));
  }
}

class Body extends StatelessWidget {
  final List<String> questions = [
    'Qual\'è il tuo colore preferito?',
    'Qual\'è il tuo animale preferito?'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questions[questionIndex]),
        RaisedButton(
          child: Text('Risposta 1'),
          onPressed: () {
            // ...
            int a = 2;
            int b = 5;
            print(a + b);
          },
        ),
        RaisedButton(
          child: Text('Risposta 2'),
          onPressed: () => rispostaAllaDomanda,
        ),
        RaisedButton(
          child: Text('Risposta 3'),
          onPressed: () => rispostaAllaDomanda,
        ),
      ],
    );
  }
}

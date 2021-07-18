import 'package:flutter/material.dart';

//funzione eseguita quando l'app viene lanciata

// void main() {
//   runApp(MyApp());
// }

//chiamiamo il metodo main con la notazione 'arrow function'
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Color(0xffC19556),
          ),
          body: Center(
            child: Body(),
          )),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is my default text!');
  }
}

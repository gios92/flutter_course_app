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
      home: Text('Hello!'),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    const perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(children: <Widget>[
        Text(perguntas[0]),
        ElevatedButton(
          child: const Text('Resposta 1'),
          onPressed: () {
            if (kDebugMode) {
              print('Resposta 1 selecionada!');
            }
          },
        ),
        ElevatedButton(
          onPressed: () => print('Resposta 2 selecionada!'),
          child: const Text('Resposta 2'),
        ),
        ElevatedButton(
          onPressed: () {
            print('Resposta 3 selecionada!');
          },
          child: const Text('Resposta 3'),
        ),
      ]),
    ));
  }
}

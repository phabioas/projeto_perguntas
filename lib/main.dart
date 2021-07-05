import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';

import 'components/resposta.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  void responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Perguntas')),
            ),
            body: Column(
              children: [
                Questao(perguntas.elementAt(_perguntaSelecionada)),
                Resposta(
                  texto: 'Resposta 1',
                  onPressed: responder,
                ),
                Resposta(
                  texto: 'Resposta 2',
                  onPressed: responder,
                ),
                Resposta(
                  texto: 'Resposta 3',
                  onPressed: responder,
                ),
              ],
            )));
  }
}

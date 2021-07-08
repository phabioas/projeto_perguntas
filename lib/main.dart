import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questionario.dart';
import 'package:projeto_perguntas/components/resultado.dart';
import 'package:projeto_perguntas/models/quiz.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int _somaResposta = 0;
  final List<Map<String, Object>> _perguntas = Quiz().getQuiz();

  void responder(int t) {
    if (temPerguntaSelecionada) {
      setState(() {
        _somaResposta += t;
        _perguntaSelecionada++;
      });
    }
  }

  void reiniciar() {
    setState(() {
      _somaResposta = 0;
      _perguntaSelecionada = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  List<String> get listaRespostas {
    return _perguntas[_perguntaSelecionada].cast()['resposta']['texto'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Perguntas')),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: (t) => responder(t))
          : Resultado(
              somaResultado: this._somaResposta, onPressed: this.reiniciar),
    ));
  }
}

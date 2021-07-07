import 'package:flutter/cupertino.dart';
import 'package:projeto_perguntas/components/questao.dart';
import 'package:projeto_perguntas/components/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int nota) responder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  List<Map<String, Object>> get listaRespostas {
    return perguntas[perguntaSelecionada].cast()['resposta'];
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        this.temPerguntaSelecionada ? listaRespostas : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map(
              (t) => Resposta(
                texto: t['texto'].toString(),
                nota: int.parse(t['nota'].toString()),
                responder: responder,
              ),
            )
            .toList(),
      ],
    );
  }
}

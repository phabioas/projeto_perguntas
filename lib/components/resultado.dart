import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int somaResultado;

  Resultado({required this.somaResultado});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('Parabéns!', style: TextStyle(fontSize: 28))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text('Você fez ${this.somaResultado} pontos!',
                style: TextStyle(fontSize: 28, color: Colors.red))),
      ),
    ]);
  }
}

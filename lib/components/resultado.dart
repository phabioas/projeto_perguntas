import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int somaResultado;
  final void Function() onPressed;

  Resultado({required this.somaResultado, required this.onPressed});

  get textoResultado {
    if (this.somaResultado <= 15) {
      return 'Tente novamente';
    }

    if (this.somaResultado <= 30) {
      return 'Você é bom';
    }

    if (this.somaResultado <= 45) {
      return 'Impressionante';
    }

    return 'Você é extraordinário';
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(this.textoResultado,
                style: TextStyle(fontSize: 28, color: Colors.red))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: this.onPressed,
          child: Text('Reiniciar'),
        ),
      ),
    ]);
  }
}

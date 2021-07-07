import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final int nota;

  final void Function(int nota) responder;

  Resposta({required this.texto, required this.responder, required this.nota});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              elevation: 15,
              shadowColor: Colors.lightBlue),
          child: Text(
            this.texto,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => responder(nota)),
    );
  }
}

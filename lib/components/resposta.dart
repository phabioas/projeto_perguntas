import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  late final String _texto;

  late final void Function()? _onPressed;

  Resposta({required String texto, required void Function()? onPressed}) {
    this._texto = texto;
    this._onPressed = onPressed;
  }

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
            this._texto,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: _onPressed),
    );
  }
}

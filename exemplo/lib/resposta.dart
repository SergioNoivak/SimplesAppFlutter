import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta({this.texto, this.quandoSelecionado});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
      width: double.infinity,
      child: TextButton(
          child: Text(this.texto),
          onPressed: quandoSelecionado,
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.blue))),
    );
    ;
  }
}

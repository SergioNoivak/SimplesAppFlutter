import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  int pontuacaoFinal;
  final Function() reiniciarQuestionario;
  Resultado(this.pontuacaoFinal, this.reiniciarQuestionario);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          "${pontuacaoFinal}",
          style: TextStyle(fontSize: 28),
        )),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: Text(
            "Reiniciar",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
        )
      ],
    );
  }
}

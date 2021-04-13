import 'package:exemplo/questao.dart';
import 'package:exemplo/resposta.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final Function(int) responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questao(perguntas[perguntaSelecionada]["text"]),
      ...List.from(this.perguntas[perguntaSelecionada]["respostas"])
          .map((resposta) => Resposta(
              texto: resposta["text"],
              quandoSelecionado: () {
                responder(resposta["nota"]);
              }))
    ]);
  }
}

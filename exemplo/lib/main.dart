import 'package:exemplo/questionario.dart';
import 'resultado.dart';
import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  int pontuacaoTotal = 0;
  final List<Map<String, Object>> perguntas = [
    {
      "text": "Qual a sua cor favorita?",
      "respostas": [
        {"text": 'Preto', "nota": 10},
        {"text": 'Verde', "nota": 5},
        {"text": 'Vermelho', "nota": 3},
        {"text": 'Branco', "nota": 1},
      ]
    },
    {
      "text": "Qual o seu animal favorito",
      "respostas": [
        {"text": 'Coelho', "nota": 10},
        {"text": 'Cobra', "nota": 5},
        {"text": 'Elefante', "nota": 3},
        {"text": 'Leão', "nota": 1},
      ]
    },
    {
      "text": "Qual o seu instrutor favorito",
      "respostas": [
        {"text": 'Leo', "nota": 10},
        {"text": 'Maria', "nota": 5},
        {"text": 'João', "nota": 3},
        {"text": 'Pedro', "nota": 1},
      ]
    },
  ];

  void responder(int pontuacao) {
    print("pergunta respondida");
    setState(() {
      this.perguntaSelecionada = perguntaSelecionada + 1;
      this.pontuacaoTotal += pontuacao;
    });
  }

  void reiniciar() {
    setState(() {
      this.perguntaSelecionada = 0;
      this.pontuacaoTotal = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas"),
            ),
            body: this.perguntaSelecionada < perguntas.length
                ? Questionario(
                    perguntas: this.perguntas,
                    perguntaSelecionada: this.perguntaSelecionada,
                    responder: responder,
                  )
                : Resultado(this.pontuacaoTotal, reiniciar)));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}

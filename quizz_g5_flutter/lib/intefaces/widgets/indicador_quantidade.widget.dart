import 'package:flutter/material.dart';

class IndicadorQuantidadeWidget extends StatelessWidget {
  const IndicadorQuantidadeWidget(
      {Key? key, required this.questaoAtual, required this.totalQuestoes})
      : super(key: key);
  final int questaoAtual;
  final int totalQuestoes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Text(
        "$questaoAtual de $totalQuestoes",
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_g5_flutter/intefaces/constants.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/botao.widget.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/botao_pular.widget.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/enunciado.widget.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/indicador_quantidade.widget.dart';

class QuestaoWidget extends StatelessWidget {
  final Function() pularQuestao;
  final Function() pressionarVerdadeiro;
  final Function() pressionarFalso;
  final String enunciado;
  final int numeroQuestaoAtual;
  final int totalQuestoes;

  const QuestaoWidget({
    Key? key,
    required this.pularQuestao,
    required this.pressionarVerdadeiro,
    required this.pressionarFalso,
    required this.enunciado,
    required this.numeroQuestaoAtual,
    required this.totalQuestoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "QUIZ APP",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: kPaddingPadrao * 2),
        Align(
          alignment: Alignment.centerLeft,
          child: IndicadorQuantidadeWidget(
              questaoAtual: numeroQuestaoAtual, totalQuestoes: totalQuestoes),
        ),
        const SizedBox(height: kPaddingPadrao / 2),
        Row(
          children: [
            Expanded(child: EnunciadoWidget(enunciado: enunciado)),
          ],
        ),
        const SizedBox(height: kPaddingPadrao / 2),
        Align(
          alignment: Alignment.centerRight,
          child: BotaoPularWidget(aoPressionar: pularQuestao),
        ),
        const Spacer(),
        BotaoWidget(titulo: 'Verdadeiro', aoPressionar: pressionarVerdadeiro),
        const SizedBox(height: kPaddingPadrao / 2),
        BotaoWidget(titulo: 'Falso', aoPressionar: pressionarFalso),
      ],
    );
  }
}

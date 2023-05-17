import 'package:flutter/material.dart';
import 'package:quizz_g5/component/questionario.component.dart';
import 'package:quizz_g5/state/questionario_state.dart';
import 'package:quizz_g5/use_case/questionario_use_case.dart';
import 'package:quizz_g5_flutter/infrastructure/repo/questionario_memoria.repo.dart';
import 'package:quizz_g5_flutter/intefaces/constants.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/questao.widget.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/resultado.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with QuestionarioComponent, QuestionarioState {
  @override
  void initState() {
    super.initState();
    inicializar(QuestionarioUseCase(QuestionarioMemoriaRepo(), this));
    buscarQuestoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
        ),
        padding: const EdgeInsets.all(kPaddingPadrao),
        child: carregando
            ? const Center(child: CircularProgressIndicator())
            : Container(
                child: !questionarioFinalizado
                    ? QuestaoWidget(
                        pularQuestao: pularQuestao,
                        pressionarVerdadeiro: pressionarVerdadeiro,
                        pressionarFalso: pressionarFalso,
                        enunciado: questaoAtual.enuciado,
                        numeroQuestaoAtual: numeroQuestaoAtual,
                        totalQuestoes: totalPerguntas,
                      )
                    : ResultadoWidget(
                        reiniciar: reiniciar,
                        quantidadeCorretas: quantidadeAcertos,
                        quantidadeIncorretas: quantidadeErros,
                        quantidadeSemResposta: quantidadeSemResposta,
                      ),
              ),
      ),
    );
  }

  @override
  void atualizar() {
    setState(() {});
  }
}

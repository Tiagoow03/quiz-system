import 'package:quizz_g5/domain/questionario.dart';
import 'package:quizz_g5/domain/status_questionario.dart';
import '../domain/questao.dart';

abstract class QuestionarioState{
  Questionario quiz = Questionario(1);
  bool carregando = false;
  bool erro = false;
  String mensagemErro = '';

  void atualizar();

  void carregarQuestoes(List<Questao> questoes){
    quiz.selecionarQuestoes(questoes);
  }

  bool get questionarioFinalizado => quiz.estaFinalizado();

  int get quantidadeAcertos => quiz.obterQuantidadeAcertos();

  int get quantidadeErros => quiz.obterQuantidadeErros();

  int get quantidadeSemResposta => quiz.obterQuantidadeSemResposta();

  int get totalPerguntas => quiz.listaQuestoes?.length ?? 0;

  int get numeroQuestaoAtual => quiz.listaResposta.length +1;

  Questao get questaoAtual => quiz.obterQuestaoAtual();
}
import 'package:quizz_g5/domain/questao.dart';
import 'package:quizz_g5/repo/questionario_repo.dart';
import 'package:quizz_g5/state/questionario_state.dart';

class QuestionarioUseCase {

  QuestionarioRepo repo;
  QuestionarioState state;

  QuestionarioUseCase(this.repo, this.state);

  Future<void> buscarQuestoes () async {
    state.carregando = true;
    state.atualizar();
    await _carregarQuestoes();
    state.carregando = false;
    state.atualizar();
  }

  void pularQuestao () {
    state.quiz.pularQuestao();
    state.atualizar();
  }

  void pressionarVerdadeiro () {
    state.quiz.responder(true);
    state.atualizar();
  }

  void pressionarFalso () {
    state.quiz.responder(false);
    state.atualizar();
  }

  Future<void> reiniciar() async {
    state.carregando = true;
    state.atualizar();
    state.quiz.reiniciar();
    await _carregarQuestoes();
    state.carregando = false;
    state.atualizar();
  }

  Future<void> _carregarQuestoes() async {
    List<Questao> lista = await repo.obterQuestoes();
    state.carregarQuestoes(lista);
  }
}
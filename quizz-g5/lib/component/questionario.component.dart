import 'package:quizz_g5/use_case/questionario_use_case.dart';

abstract class QuestionarioComponent{
  late QuestionarioUseCase _useCase;

  void inicializar(QuestionarioUseCase useCase){
    _useCase = useCase;
  }

  void buscarQuestoes(){
    _useCase.buscarQuestoes();
  }

  void pularQuestao () {
    _useCase.pularQuestao();
  }

  void pressionarVerdadeiro () {
    _useCase.pressionarVerdadeiro();
  }

  void pressionarFalso () {
    _useCase.pressionarFalso();
  }

  void reiniciar() {
    _useCase.reiniciar();
  }
}
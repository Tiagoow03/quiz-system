import 'package:quizz_g5/domain/questao.dart';
import 'package:quizz_g5/repo/questionario_repo.dart';

class QuestionarioMemoriaRepo implements QuestionarioRepo {
  @override
  Future<List<Questao>> obterQuestoes() async {
    await Future.delayed(Duration(seconds: 5));
    return [
      Questao("Pergunta 1", 1, true),
      Questao("Pergunta 2", 2, true),
      Questao("Pergunta 3", 3, true),
      Questao("Pergunta 4", 4, false)
    ];
  }
}

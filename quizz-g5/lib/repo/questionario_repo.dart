import 'package:quizz_g5/domain/questao.dart';

abstract class QuestionarioRepo{
  Future<List<Questao>> obterQuestoes();
}
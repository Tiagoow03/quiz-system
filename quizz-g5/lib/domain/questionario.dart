import 'package:quizz_g5/domain/questao.dart';
import 'package:quizz_g5/domain/questionario_ja_aberto.dart';
import 'package:quizz_g5/domain/questionario_ja_fechado.dart';
import 'package:quizz_g5/domain/questionario_ja_preenchido.dart';
import 'package:quizz_g5/domain/status_questionario.dart';

class Questionario {
  List<Questao>? listaQuestoes;
  List<bool?> listaResposta = [];
  int id;
  StatusQuestionario status = StatusQuestionario.fechado;

  Questionario(this.id);

  void iniciar() {
    validarSeIniciou();
    status = StatusQuestionario.aberto;
  }

  void responder(bool? resposta) {
    validarSeFechou();
    validarSeConcluiu();
    listaResposta.add(resposta);
    print("Respondeu a pergunta");
  }

  void reiniciar(){
    listaResposta = [];
    listaQuestoes = null;
    status = StatusQuestionario.fechado;
  }

  void finalizar(){
    validarSeFechou();
    status = StatusQuestionario.fechado;
  }

  void pularQuestao(){
    responder(null);
  }

  Questao obterQuestaoAtual(){
    validarSeConcluiu();
    print("Obteu a pergunta atual");
    return listaQuestoes![listaResposta.length];
  }

  void selecionarQuestoes(List<Questao> questoes){
    iniciar();
    listaQuestoes = questoes;
  }

  void validarSeIniciou() {
    if (status == StatusQuestionario.aberto) throw QuestionarioJaAberto();
  }

  void validarSeFechou(){
    if (status == StatusQuestionario.fechado) throw QuestionarioJaFechado();
  }

  void validarSeConcluiu(){
    if (estaFinalizado()) throw QuestionarioJaPreenchido();
  }

  bool estaFinalizado() {
    return listaQuestoes?.length == listaResposta.length;
  }

  int obterQuantidadeAcertos() {
    int quantidadeAcertos = 0;
    for(int i = 0; i < listaResposta.length; i++) {
      Questao questao = listaQuestoes![i];
      bool? resposta = listaResposta[i];

      if (questao.resposta == resposta) quantidadeAcertos++;
    }
    return quantidadeAcertos;
  }

  int obterQuantidadeErros() {
    int quantidadeErros = 0;
    for(int i = 0; i < listaResposta.length; i++) {
      Questao questao = listaQuestoes![i];
      bool? resposta = listaResposta[i];

      if (resposta != null && questao.resposta != resposta) quantidadeErros++;
    }
    return quantidadeErros;
  }

  int obterQuantidadeSemResposta() {
    // outra forma de filtrar uma lista
    return listaResposta.where((resposta) => resposta == null).length;
  }

}

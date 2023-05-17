import 'package:flutter/material.dart';
import 'package:quizz_g5_flutter/intefaces/constants.dart';
import 'package:quizz_g5_flutter/intefaces/widgets/botao.widget.dart';

class ResultadoWidget extends StatelessWidget {
  final Function() reiniciar;
  final int quantidadeCorretas;
  final int quantidadeIncorretas;
  final int quantidadeSemResposta;

  const ResultadoWidget({
    Key? key,
    required this.reiniciar,
    required this.quantidadeCorretas,
    required this.quantidadeIncorretas,
    required this.quantidadeSemResposta,
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
        const Text('Quiz finalizado 🎉',
            style: TextStyle(fontSize: 26, color: Colors.white)),
        const SizedBox(height: kPaddingPadrao / 4),
        const Text('Eai, acertou quantas?',
            style: TextStyle(fontSize: 26, color: Colors.white)),
        const SizedBox(height: kPaddingPadrao * 2),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(kPaddingPadrao),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Resultado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.check_circle_outline_outlined,
                      color: Colors.greenAccent, size: 28),
                  const SizedBox(width: kPaddingPadrao / 3),
                  Text('Corretas: $quantidadeCorretas',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
              const SizedBox(height: kPaddingPadrao / 4),
              Row(
                children: [
                  const Icon(Icons.cancel_outlined,
                      color: Colors.redAccent, size: 28),
                  const SizedBox(width: kPaddingPadrao / 3),
                  Text('Incorretas: $quantidadeIncorretas',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
              const SizedBox(height: kPaddingPadrao / 4),
              Row(
                children: [
                  const Icon(Icons.help_outline_outlined,
                      color: Colors.yellowAccent, size: 28),
                  const SizedBox(width: kPaddingPadrao / 3),
                  Text('Sem resposta: $quantidadeSemResposta',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        BotaoWidget(titulo: 'Reiniciar', aoPressionar: reiniciar),
      ],
    );
  }
}

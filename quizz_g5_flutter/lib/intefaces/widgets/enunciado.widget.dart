import 'package:flutter/material.dart';
import 'package:quizz_g5_flutter/intefaces/constants.dart';

class EnunciadoWidget extends StatelessWidget {
  const EnunciadoWidget({Key? key, required this.enunciado}) : super(key: key);
  final String enunciado;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(kPaddingPadrao),
      child: Text(enunciado,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              height: 1.5,
              fontWeight: FontWeight.w400)),
    );
  }
}

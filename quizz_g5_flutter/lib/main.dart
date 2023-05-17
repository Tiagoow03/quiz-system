import 'package:flutter/material.dart';
import 'package:quizz_g5_flutter/intefaces/pages/home.page.dart';
// Stateless -> Um componente de tela (widget) que não terá alteração (estático)
// Statefull -> Um componente de tela que terá alterações
// stless -> atalho stateless
// stful -> atalho stateful

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        fontFamily: 'Shantell',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
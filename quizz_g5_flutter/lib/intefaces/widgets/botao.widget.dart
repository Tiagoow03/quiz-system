import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  const BotaoWidget({Key? key, required this.titulo, required this.aoPressionar}) : super(key: key);
  final String titulo;
  final Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 26),
        ),
        onPressed: aoPressionar,
        child: Text(titulo, style: TextStyle(color: Colors.purple, fontSize: 20,),),
      ),
    );
  }
}

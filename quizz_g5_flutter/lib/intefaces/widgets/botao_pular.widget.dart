import 'package:flutter/material.dart';

class BotaoPularWidget extends StatelessWidget {
  final Function() aoPressionar;

  const BotaoPularWidget({Key? key, required this.aoPressionar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.white.withOpacity(0.3),
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
        onPressed: aoPressionar,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(width: 0),
            Text("Pular"),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

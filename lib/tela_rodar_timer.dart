import 'package:flutter/material.dart';

class TelaRodarTimer extends StatelessWidget {
  const TelaRodarTimer({super.key, required this.minute, required this.second});

  final int minute;
  final int second;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rodar Timer")),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            minute.toString().padLeft(2, '0') +
                ':' +
                second.toString().padLeft(2, '0'),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar'),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trabalho_pa/tela_selecionar_timer.dart';

void main() {
  runApp(const TimerMain());
}

class TimerMain extends StatelessWidget {
  const TimerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Timer",
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: const TelaSelecionarTimer());
  }
}

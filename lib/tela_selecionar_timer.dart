import 'package:flutter/material.dart';
import 'package:trabalho_pa/tela_rodar_timer.dart';

class TelaSelecionarTimer extends StatefulWidget {
  const TelaSelecionarTimer({super.key});

  @override
  State<TelaSelecionarTimer> createState() => _TelaSelecionarTimerState();
}

class _TelaSelecionarTimerState extends State<TelaSelecionarTimer> {
  final TextEditingController minuteController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  Minutes? selectedMinute;
  Seconds? selectedSecond;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<Minutes>> minuteEntries =
        <DropdownMenuEntry<Minutes>>[];
    for (final Minutes minute in Minutes.values) {
      minuteEntries.add(
        DropdownMenuEntry<Minutes>(
            value: minute,
            label: minute.label,
            enabled: minute.label != 'Grey'),
      );
    }

    final List<DropdownMenuEntry<Seconds>> secondEntries =
        <DropdownMenuEntry<Seconds>>[];
    for (final Seconds second in Seconds.values) {
      secondEntries
          .add(DropdownMenuEntry<Seconds>(value: second, label: second.label));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            'Selecione o tempo:',
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownMenu<Minutes>(
                initialSelection: Minutes.zero,
                controller: minuteController,
                label: const Text('Minutos'),
                dropdownMenuEntries: minuteEntries,
                onSelected: (Minutes? minute) {
                  setState(() {
                    selectedMinute = minute;
                  });
                },
              ),
              const SizedBox(width: 10),
              DropdownMenu<Seconds>(
                initialSelection: Seconds.zero,
                controller: secondController,
                label: const Text('Segundos'),
                dropdownMenuEntries: secondEntries,
                onSelected: (Seconds? second) {
                  setState(() {
                    selectedSecond = second;
                  });
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaRodarTimer(
                          minute: selectedMinute!.value,
                          second: selectedSecond!.value)));
            },
            child: const Text('Iniciar'),
          ),
        ]),
      ),
    );
  }
}

enum Minutes {
  zero('00', 0),
  one('01', 1),
  two('02', 2),
  three('03', 3),
  four('04', 4),
  five('05', 5),
  six('06', 6),
  seven('07', 7),
  eight('08', 8),
  nine('09', 9),
  ten('10', 10),
  eleven('11', 11),
  twelve('12', 12),
  thirteen('13', 13),
  fourteen('14', 14),
  fifteen('15', 15),
  sixteen('16', 16),
  seventeen('17', 17),
  eighteen('18', 18),
  nineteen('19', 19),
  twenty('20', 20),
  twenty_one('21', 21),
  twenty_two('22', 22),
  twenty_three('23', 23),
  twenty_four('24', 24),
  twenty_five('25', 25),
  twenty_six('26', 26),
  twenty_seven('27', 27),
  twenty_eight('28', 28),
  twenty_nine('29', 29),
  thirty('30', 30),
  thirty_one('31', 31),
  thirty_two('32', 32),
  thirty_three('33', 33),
  thirty_four('34', 34),
  thirty_five('35', 35),
  thirty_six('36', 36),
  thirty_seven('37', 37),
  thirty_eight('38', 38),
  thirty_nine('39', 39),
  forty('40', 40),
  forty_one('41', 41),
  forty_two('42', 42),
  forty_three('43', 43),
  forty_four('44', 44),
  forty_five('45', 45),
  forty_six('46', 46),
  forty_seven('47', 47),
  forty_eight('48', 48),
  forty_nine('49', 49),
  fifty('50', 50),
  fifty_one('51', 51),
  fifty_two('52', 52),
  fifty_three('53', 53),
  fifty_four('54', 54),
  fifty_five('55', 55),
  fifty_six('56', 56),
  fifty_seven('57', 57),
  fifty_eight('58', 58),
  fifty_nine('59', 59);

  const Minutes(this.label, this.value);
  final String label;
  final int value;
}

enum Seconds {
  zero('00', 0),
  one('01', 1),
  two('02', 2),
  three('03', 3),
  four('04', 4),
  five('05', 5),
  six('06', 6),
  seven('07', 7),
  eight('08', 8),
  nine('09', 9),
  ten('10', 10),
  eleven('11', 11),
  twelve('12', 12),
  thirteen('13', 13),
  fourteen('14', 14),
  fifteen('15', 15),
  sixteen('16', 16),
  seventeen('17', 17),
  eighteen('18', 18),
  nineteen('19', 19),
  twenty('20', 20),
  twenty_one('21', 21),
  twenty_two('22', 22),
  twenty_three('23', 23),
  twenty_four('24', 24),
  twenty_five('25', 25),
  twenty_six('26', 26),
  twenty_seven('27', 27),
  twenty_eight('28', 28),
  twenty_nine('29', 29),
  thirty('30', 30),
  thirty_one('31', 31),
  thirty_two('32', 32),
  thirty_three('33', 33),
  thirty_four('34', 34),
  thirty_five('35', 35),
  thirty_six('36', 36),
  thirty_seven('37', 37),
  thirty_eight('38', 38),
  thirty_nine('39', 39),
  forty('40', 40),
  forty_one('41', 41),
  forty_two('42', 42),
  forty_three('43', 43),
  forty_four('44', 44),
  forty_five('45', 45),
  forty_six('46', 46),
  forty_seven('47', 47),
  forty_eight('48', 48),
  forty_nine('49', 49),
  fifty('50', 50),
  fifty_one('51', 51),
  fifty_two('52', 52),
  fifty_three('53', 53),
  fifty_four('54', 54),
  fifty_five('55', 55),
  fifty_six('56', 56),
  fifty_seven('57', 57),
  fifty_eight('58', 58),
  fifty_nine('59', 59);

  const Seconds(this.label, this.value);
  final String label;
  final int value;
}

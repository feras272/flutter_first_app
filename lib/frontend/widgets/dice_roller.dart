import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImage = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = random.nextInt(6) + 1;
    });
    dev.log('The button is clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: 200.0,
          height: 200.0,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: () => rollDice(),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

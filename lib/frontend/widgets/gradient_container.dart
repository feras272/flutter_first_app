import 'dart:developer' as dev;
import 'dart:math';

import 'package:first_app/frontend/widgets/dice_roller.dart';
import 'package:flutter/material.dart';
import 'style_text.dart';

import '../../main.dart';

class GradientContainer extends StatefulWidget {
  GradientContainer({super.key});

  @override
  State<GradientContainer> createState() {
    return _GradientContainerState(); // Object from _GradientContainerState
  }
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 2, 74, 50),
              Color.fromARGB(255, 139, 6, 117),
            ]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(
          height:
              40), // It generates a box like structure in which we can give padding of height and width.
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          //padding:const EdgeInsets.only(top: 20,), For padding all over the button.
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          textStyle: const TextStyle(
            fontSize: 25,
          ),
        ),
        child: const Text('Roll Dice'),
      ),
    ]);
  }
}

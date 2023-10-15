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

  var currentDiceRollTwo = 4;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRollTwo = randomizer.nextInt(6) + 1;
    });
  }

  // var activeDiceImage = 'assets/images/dice-1.png';

  // void rollDice() {
  //  var diceRoll = Random().nextInt(6) +1;
  //   setState(() {
  //     activeDiceImage = 'assets/images/dice-$diceRoll.png';

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRollTwo.png',
          width: 100,
        ),
        // const SizedBox(height: 20,), This can be used here as an alternative to padding
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 30,
                ),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );

  }
}

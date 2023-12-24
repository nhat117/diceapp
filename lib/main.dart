import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Diceee",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 2;

  void rollDice() {
    setState(() {
      leftDiceNum = Random().nextInt(5) + 1;
      rightDiceNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('assets/images/dice$leftDiceNum.png')),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      rollDice();
                    },
                    child: Image.asset('assets/images/dice$rightDiceNum.png'))),
          ],
        ),
      ),
    );
  }
}

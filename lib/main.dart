import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Pergunte-me o que quiser'),
        // textDirection: TextDirection.ltr,
        titleTextStyle: TextStyle(
          fontSize: 25,
        ),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var BallNumber = 1;

  int genRandomNumber() {
    return Random().nextInt(3) + 1;
  }

  void roolDice() {
    setState(() {
      BallNumber = genRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: roolDice,
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
                child: Image.asset(
                  'images/ball$BallNumber.png',
                )),
          ),
        ],
      ),
    );
  }
}

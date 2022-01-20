import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;

  void rollDice () {
    leftDiceNumber = (Random().nextInt(6)) + 1;
    rightDiceNumber = (Random().nextInt(6)) + 1;
    print('rollDice functioned.  left dice = $leftDiceNumber right dice = $rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          )
        ],
      ),
    );
  }
}

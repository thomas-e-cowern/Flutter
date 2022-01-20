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
                    leftDiceNumber = (Random().nextInt(6)) + 1;
                    rightDiceNumber = (Random().nextInt(6)) + 1;
                    print('left button pressed.  left dice = $leftDiceNumber right dice = $rightDiceNumber');
                  });
                },
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = (Random().nextInt(6)) + 1;
                    leftDiceNumber = (Random().nextInt(6)) + 1;
                  });
                  print('right button pressed.  left dice = $leftDiceNumber right dice = $rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          )
        ],
      ),
    );
  }
}

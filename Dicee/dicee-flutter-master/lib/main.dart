import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {

    leftDiceNumber = 1;

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 4;
                    print('left button pressed.  dice = $leftDiceNumber');
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  print('right button pressed');
                },
                child: Image.asset('images/dice2.png'),
              )
          )
        ],
      ),
    );
  }
}

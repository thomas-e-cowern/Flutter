import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(

      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;
  late ShakeDetector detector;

  @override
  void initState() {
    super.initState();
    detector = ShakeDetector.autoStart(onPhoneShake: () {

      //   ballNumber = (Random().nextInt(5)) + 1;
      //
      // print('Phone shook, ballNumber is $ballNumber');

      setState(() {
        print('shake is working...');
      });
    });
    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = (Random().nextInt(5)) + 1;
          });
          print('new ballNumber is $ballNumber');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

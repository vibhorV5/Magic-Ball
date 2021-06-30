import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything!!!',
              style: TextStyle(
                color: Colors.blue[100],
              ),
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int buttonPressed = 1;

  void ask() {
    setState(() {
      buttonPressed = Random().nextInt(5) + 1;
      print('$buttonPressed is Pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  ask();
                },
                child: Image(
                  image: AssetImage('images/ball$buttonPressed.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

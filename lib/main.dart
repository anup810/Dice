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
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  void buttonPressed() {
    setState(() {
      leftButtonPressed = Random().nextInt(6) + 1;
      rightButtonPressed = Random().nextInt(6) + 1;
    });
  }

  int leftButtonPressed = 1;
  int rightButtonPressed = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftButtonPressed.png'),
              onPressed: () {
                buttonPressed();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightButtonPressed.png'),
              onPressed: () {
                buttonPressed();
              },
            ),
          ),
        ],
      ),
    );
  }
}

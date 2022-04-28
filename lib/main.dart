import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 5;

  void changeDiceFace() {
    leftDiceNumber = 1 + Random().nextInt(6);
    rightDiceNumber = 1 + Random().nextInt(6);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  // if (leftDiceNumber == 6) {
                  //   leftDiceNumber = 1;
                  // } else {
                  //   leftDiceNumber += 1;
                  // };

                  changeDiceFace();

                });

              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });

              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
            // child: Image(
            //   image: AssetImage('images/dice2.png'),
            // )
          ),
        ],
      ),
    );
  }
}





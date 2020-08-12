import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.teal.shade900,
      ),
      backgroundColor: Colors.teal.shade800,
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({
    Key key,
  }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                voom();
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                voom();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void voom() {
    return setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MagicEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade800,
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  BallPage({
    Key key,
  }) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

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
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }

  void voom() {
    return setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}

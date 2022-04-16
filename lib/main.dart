import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.green.shade800,
        ),
        body: const DicePage(),
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
  int Lcounter = 3;
  int Rcounter = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
                onPressed: () { setState(() {
                  Rcounter = Random().nextInt(6)+1;
                  Lcounter = Random().nextInt(6)+1;
                }); },
                child: Image.asset('./images/dice$Lcounter.png'),
                ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () { setState(() {
                  Rcounter = Random().nextInt(6)+1;
                  Lcounter = Random().nextInt(6)+1;
                }); },
                child: Image.asset('./images/dice$Rcounter.png'),
              ),
            ),

          ],
        ),
    );
  }
}

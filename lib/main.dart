import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8Page());
}

class Magic8Page extends StatefulWidget {
  const Magic8Page({super.key});

  @override
  State<Magic8Page> createState() => _Magic8PageState();
}

class _Magic8PageState extends State<Magic8Page> {

  int randomBallNumber = 1;

  void randomBallNumberGenerator(){
    setState(() {
      randomBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask Me Anything",
            style: TextStyle(
                color: Colors.blueGrey[900],
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.orange[100],
          centerTitle: true,
        ),
        backgroundColor: Colors.orange,
        body: Container(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: (){
              randomBallNumberGenerator();
            },
            child: Image(
              image: AssetImage('images/ball$randomBallNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

int ballNumber = 1;

class _BallPageState extends State<BallPage> {
  void _answer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: _answer,
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}

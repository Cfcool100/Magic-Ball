import 'package:flutter/material.dart';
import 'package:magic_8_ball/homePage/Ball_Page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black38,
          title: Text('Ask Me Anything'),
        ),
        body: BallPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGChanger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> randomColorList = [
    Color(0xff27ae60),
    Color(0xff8e44ad),
    Color(0xffe74c3c),
    Color(0xff2c3e50),
    Color(0xffe67e22),
    Color(0xff2980b9),
    Color(0xff7f8c8d),
  ];

  int index;
  Color colorRightNow = Color(0xffe74c3c);

  void changeColor() {
    setState(() {
      index = Random().nextInt(randomColorList.length);
      colorRightNow = randomColorList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorRightNow,
      ),
      child: FlatButton(
        onPressed: changeColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          "Change !!",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

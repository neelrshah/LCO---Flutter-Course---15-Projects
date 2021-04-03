import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Background Changer"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var backgroundColour = [
    Colors.blue,
    Colors.black,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.yellow,
    Colors.amber,
    Colors.tealAccent,
  ];

  var currentColour = Colors.white;

  void setRandomColor() {
    int rnd = Random().nextInt(backgroundColour.length);
    setState(() {
      currentColour = backgroundColour[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColour,
      child: Center(
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          onPressed: setRandomColor,
          color: Colors.black,
          child: Text(
            "Change Color",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _MyApp(),
  ));
}

class _MyApp extends StatefulWidget {
  @override
  MyApp createState() {
    return MyApp();
  }
}

class MyApp extends State<_MyApp> {
  // This widget is the root of your application.

  int ballNumber = 1;

  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    "Ask me Anything",
                    style: TextStyle(

                        fontFamily: 'Charmonman',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: FlatButton(
                    child: Image.asset('images/ball$ballNumber.png', ),
                    onPressed: (){
                      changeBallFace();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

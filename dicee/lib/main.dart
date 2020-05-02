import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _MyApp(),
  ));
}
class _MyApp extends StatefulWidget{

  @override
  MyApp createState() {
    return MyApp();
  }
}

class MyApp extends State<_MyApp> {
  // This widget is the root of your application.

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;


  void changeDiceFace(int i){
    setState(() {
      i==0?(leftDiceNumber = Random().nextInt(6) + 1): (rightDiceNumber = Random().nextInt(6)  + 1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(child: Image.asset('images/dice$leftDiceNumber.png'), onPressed: (){
                  print('left btn pressed');
                  changeDiceFace(0);
                },)
              ),
              Expanded(
                child: FlatButton(child: Image.asset('images/dice$rightDiceNumber.png'), onPressed: (){
                  print('right btn pressed');
                  changeDiceFace(1);
                },),
              )
            ],
          ),
        ));
  }
}

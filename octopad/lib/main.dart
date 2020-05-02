import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int soundNumber) {
    var player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createlayout(int index) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        child: FlatButton(
          onPressed: () {
            playsound(index);
          },
          color: Colors.grey.shade800,
          child: Text(''),
          splashColor: Colors.amber,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
            'Octopad',
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          backgroundColor: Colors.black45,
        ),
        body: SafeArea(
            child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                createlayout(1),
                createlayout(2),
                createlayout(3),
                createlayout(4),
              ],
            ),
            Column(
              children: <Widget>[
                createlayout(5),
                createlayout(6),
                createlayout(7),
                createlayout(1),
              ],
            )
          ],
        )),
      ),
    );
  }
}

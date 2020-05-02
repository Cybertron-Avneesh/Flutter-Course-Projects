import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/dp.jpg'),
              ),
              Text(
                "Avneesh Kumar",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Charmonman',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'ComicNeue',
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.white30,
                height: 10.0,
                thickness: 2.5,
                indent: 30.0,
                endIndent: 30.0,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.purple,
                  ),
                  title: Text(
                    "+91 89571 63502",
                    style: TextStyle(color: Colors.purple, fontSize: 22.0),
                  ),
                ),
                elevation: 20.0,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.purple,
                  ),
                  title: Text(
                    "avaneeshsahu000@gmail.com",
                    style: TextStyle(color: Colors.purple, fontSize: 16.0),
                  ),
                ),
                elevation: 20.0,
              )
            ],
          ),
          minimum: EdgeInsets.only(left: 10, right: 10, top: 50),
        ),
      ),
    ));
  }
}

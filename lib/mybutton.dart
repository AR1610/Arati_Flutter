import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton'),
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('Flat Button', style: TextStyle(fontSize: 20.0),),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            Container(  child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Raised button", style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),),
                  RaisedButton(
                    child: Text("Register", style: TextStyle(fontSize: 20),),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey, onPressed: () {

                  },
                  )
                ],
              ),
            ),

            )




          ]
          ))
      ),
    );
  }
}
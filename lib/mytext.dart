import 'package:flutter/material.dart';

void main()=> runApp(MyText());

class MyText extends StatelessWidget   {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: MyTextDetails (),
    );
  }
}

class MyTextDetails extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title:  Text('Royal App'),
      ),
      body: Center(
        child:  Text("Royal Technosoft", style: TextStyle(fontSize: 24,
        color: Colors.deepOrange,
          fontWeight:FontWeight.w600,
          fontStyle: FontStyle.italic,
          wordSpacing:  40,
          backgroundColor: Colors.greenAccent,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2,1),blurRadius: 20)
            ]
        ),

        ),
      ),
    );
  }

}


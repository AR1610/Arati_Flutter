import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(

     appBar: AppBar(
       title: Text('Flutter App'),
     ),
     body: Container(

       padding: EdgeInsets.all(40),
       margin: EdgeInsets.all(20),
       decoration: BoxDecoration(

         border:  Border.all(color: Colors.black,width: 4),
         borderRadius:  BorderRadius.circular(10),
         boxShadow: [
           new BoxShadow(color: Colors.pinkAccent,offset: new Offset(4.0, 4.0)),
         ],
       ),

       child: Text("Helllooo Flutter, I am new Flutter Developer :)",style: TextStyle(fontSize: 20)),
     ),
     ),
   );
  }
}
import 'package:flutter/material.dart';
void main() => runApp(MyButtonMain());
class MyButtonMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyDropdownButton'),

        ),
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyButton> {
  String dropdownvalue = 'Flutter';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DropdownButton<String>(
      value: dropdownvalue,
      elevation: 15,
      style: TextStyle(color: Colors.blue),
      underline:  Container(
        height: 2,
        color:  Colors.blue,
      ),
      onChanged: (String? newvalue){
        setState((){
          dropdownvalue = newvalue!;
        });
      },
      items:<String> ['Flutter','Java','Android'].map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

    );
  }
  }

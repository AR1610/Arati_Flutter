import 'package:flutter/material.dart';

void main() => runApp(MyStack());

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body: Center(

          child: Stack(

            fit: StackFit.passthrough,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 500,
                width: 300,
                color: Colors.pinkAccent,
                child: Center(
                  child: Text('Main Stack',style: TextStyle(color: Colors.black,fontSize: 30),),
                ),
              ),
              Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text("stack1",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ),

                  )),
              Positioned(
                top: 100,
                left: 20,
                child: MyStackWidget(),)
            ],
          ),

        ),

      ),

    );
  }
}

class MyStackWidget extends StatefulWidget {
  const MyStackWidget({Key? key}) : super(key: key);

  @override
  _MyStackWidgetState createState() => _MyStackWidgetState();
}

class _MyStackWidgetState extends State<MyStackWidget> {

  String dropdownvalue = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: dropdownvalue,
      elevation: 15,
      style: TextStyle(color: Colors.black),
      underline:  Container(
        height: 2,
        color:  Colors.black,
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


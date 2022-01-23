import 'package:flutter/material.dart';

void main() => runApp(MyAlertDialog());

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(

        appBar:  AppBar(
          title:  Text('Alert Dialog'),
        ),
      body: mAlertDialog(),

      ),
    );
  }
}

class mAlertDialog extends StatefulWidget {
  const mAlertDialog({Key? key}) : super(key: key);

  @override
  _mAlertDialogState createState() => _mAlertDialogState();
}

class _mAlertDialogState extends State<mAlertDialog> {
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(8),
      child: RaisedButton(

        child: Text("Alert Dialog"),
        onPressed: () {

          showAlertDialog(context);
        },
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    //Create Button Create
    Widget btnOk = FlatButton(
        onPressed:(){
          Navigator.of(context).pop();
        },
        child: Text("OK"));


    // cancel btn & confm btn

    Widget btnCancel = FlatButton(
      child: const Text('Cancel'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget btnDelete = FlatButton(
    child: const Text('Delete'),
    onPressed: () {
    Navigator.of(context).pop();
    },
    );

    // Create AlertDialog
    AlertDialog alertDialog = AlertDialog(
      title: Text("Simple Alert Dialog"),
      content: Text("Are you sure, you want to delete this file?"),
      actions: [
        btnOk,btnCancel,btnDelete
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context ){
          return alertDialog;
        });
  }
}

class ConfirmAction {
}


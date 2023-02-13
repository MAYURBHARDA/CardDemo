//import 'package:flutter/cupertino.dart';
//import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 14.0,
    backgroundColor: Colors.blue,
    gravity: ToastGravity.BOTTOM,
    textColor: Colors.white,
  );
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return SwitchState();
  }
}

class SwitchState extends State<SwitchWidget> {
  bool isSwitched = false;
  Color _iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return SwitchListTile(
            title: const Text("Light"),
            activeColor: Colors.blue,
            secondary: Icon(
              Icons.lightbulb_outline,
              color: _iconColor,
            ),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
              if (isSwitched == true) {
                _iconColor = Colors.red;

                showToast("On");
              } else {
                _iconColor = Colors.black;
                showToast("Off");
              }
            },
          );
        },
      ),
    );
  }
}

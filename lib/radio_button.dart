import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum Language { java, flutter }

enum Result { pass, fail }

void showToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 14.0);
}

class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  State<RadioButtons> createState() {
    return RadioState();
  }
}

class RadioState extends State<RadioButtons> {
  Language? _character = Language.flutter;
  Result? _result = Result.pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Radio Button"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Java'),
              leading: Radio<Language>(
                value: Language.flutter,
                groupValue: _character,
                onChanged: (Language? value) {
                  setState(() {
                    showToast(_character.toString());
                    _character = value;
                  });
                },
              ),
            ), // java
            ListTile(
              title: const Text('flutter'),
              leading: Radio<Language>(
                value: Language.java,
                groupValue: _character,
                onChanged: (Language? value) {
                  setState(() {
                    showToast(_character.toString());

                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Pass"),
              leading: Radio<Result>(
                value: Result.fail,
                groupValue: _result,
                onChanged: (Result? value) {
                  setState(() {
                    showToast(_result.toString());

                    _result = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Fail"),
              leading: Radio<Result>(
                value: Result.pass,
                groupValue: _result,
                onChanged: (Result? value) {
                  setState(() {
                    showToast(_result.toString());

                    _result = value;
                  });
                },
              ),
            )
          ],
        ));
  }
}

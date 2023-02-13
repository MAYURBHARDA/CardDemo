import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return SnackBarState();
  }
}

class SnackBarState extends State<SnackBarWidget> {
  bool checked = false;
  Color _color = Colors.black;
  void showSnackBar(String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text("Light"),
        secondary: Icon(
          Icons.lightbulb,
          color: _color,
        ),
        value: checked,
        onChanged: (bool value) {
          setState(() {
            checked = value;
          });
          if (checked == true) {
            showSnackBar("On");
            _color = Colors.red;
          } else {
            showSnackBar("Off");
            _color = Colors.black;
          }
        },
      ),
    );
  }
}

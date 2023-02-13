import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  const ChipDemo({Key? key}) : super(key: key);

  @override
  State<ChipDemo> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip Demo"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Chip(
            elevation: 20,
            backgroundColor: Colors.blue,
            shadowColor: Colors.black,
            avatar: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: Text(
                "MB",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            label: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Mayur Bharda",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

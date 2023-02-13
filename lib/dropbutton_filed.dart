import 'package:flutter/material.dart';

class DropButtonFiled extends StatefulWidget {
  const DropButtonFiled({super.key});

  @override
  State<StatefulWidget> createState() {
    return DropButtonFiledState();
  }
}

List<String> cities = [
  "Somnath",
  "Veraval",
  "Junagadh",
  "Rajkot",
  "Ahmedabad",
  "Baroda"
];

class DropButtonFiledState extends State<DropButtonFiled> {
  String dropdownValue = cities.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button And Filed"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: cities.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

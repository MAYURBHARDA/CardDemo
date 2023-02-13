import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  final List<int> _items = List.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.secondary.withOpacity(0.15);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reorderable ListView Demo"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
          children: <Widget>[
            for (int index = 0; index < _items.length; index++)
              ListTile(
                key: Key("$index"),
                title: Text("Item ${_items[index]}"),
                tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              )
          ],
        ),
      ),
    );
  }
}

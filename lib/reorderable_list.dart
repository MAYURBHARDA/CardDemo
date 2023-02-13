import 'package:flutter/material.dart';

class ReorderableListViews extends StatefulWidget {
  const ReorderableListViews({super.key});

  @override
  State<ReorderableListViews> createState() => _ReorderableListViewsState();
}

class _ReorderableListViewsState extends State<ReorderableListViews> {
  // late int oldIndex;
  // late int newIndex;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   oldIndex = 0;
  //   newIndex = 0;
  // }

  final List<int> _items = List<int>.generate(50, (index) => index);
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Reorderable ListView Demo"),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 40.0),
    //     child: ReorderableListView(
    //       children: <Widget>[
    //         for (int index = 0; index < _items.length; index += 1)
    //           ListTile(
    //             key: Key('$index'),
    //             tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
    //             title: Text('Item ${_items[index]}'),
    //           ),
    //       ],
    //       onReorder: (int oldIndex, int newIndex) {
    //         setState(() {
    //           if (oldIndex < newIndex) {
    //             newIndex -= 1;
    //           }
    //           final int item = _items.removeAt(oldIndex);
    //           _items.insert(newIndex, item);
    //         });
    //       },
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reorderable ListView Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ReorderableListView(
            //const EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              for (int index = 0; index < _items.length; index++)
                ListTile(
                  key: Key('$index'),
                  tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                  title: Text('Item ${_items[index]}'),
                ),
            ],
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
                // print("this is old index $oldIndex");
                // print("this is new index $newIndex");
              });
            }),
      ),
    );
  }
}

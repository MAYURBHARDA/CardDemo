import 'package:flutter/material.dart';

class CustomScrollViews extends StatefulWidget {
  const CustomScrollViews({super.key});

  @override
  State<StatefulWidget> createState() {
    return CustomScrollViewsState();
  }
}

class CustomScrollViewsState extends State<CustomScrollViews> {
  String title = "Sliver Appbar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 100.00,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              // background: Image.asset("assets/diamond.png"),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text("Grid item $index"),
                );
              },
              childCount: 20,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          ),
          SliverFixedExtentList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index & 9)],
                  child: Text("List Item $index"),
                );
              }),
              itemExtent: 50.0)
        ],
      ),
    );
  }
}

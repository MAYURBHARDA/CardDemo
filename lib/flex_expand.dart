import 'package:flutter/material.dart';

class FlexExpand extends StatefulWidget {
  const FlexExpand({super.key});

  @override
  State<FlexExpand> createState() => FlexExpandState();
}

class FlexExpandState extends State<FlexExpand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Expand Demo"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                )),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
            Expanded(
                child: Container(
              color: Colors.amber,
              height: 100,
            ))
          ],
        ),
      ),

      // expanded
      // body: Center(
      //   child: Row(
      //     children: <Widget>[
      //       Container(
      //         color: Colors.blue,
      //         height: 100,
      //         width: 100,
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.amber,
      //           height: 100,
      //         ),
      //       ),
      //       Container(
      //         color: Colors.blue,
      //         height: 100,
      //         width: 100,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

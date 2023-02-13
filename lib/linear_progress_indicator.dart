import 'dart:async';

import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProgressState();
  }
}

class ProgressState extends State<Progress> {
  late bool _loading;
  late double _progressValue;
  // late bool _loading1;
  // late double _progressValue1;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
    // _loading1 = false;
    // _progressValue1 = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Progress Bar"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            child: _loading
                ? Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(
                        backgroundColor: Colors.cyanAccent,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.red),
                        value: _progressValue,
                      ),
                      Text('${(_progressValue * 100).round()}%'),
                    ],
                  )
                : const Text("Press button for downloading",
                    style: TextStyle(fontSize: 25)),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _loading = !_loading;
                _progressValue = 0;
                _updateProgress();
              });
            },
            child: const Icon(Icons.cloud_download),
          ),
          // Circular Progress Indicator
          // Container(
          //   padding: const EdgeInsets.all(40.0),
          //   child: _loading1
          //       ? Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: <Widget>[
          //             CircularProgressIndicator(
          //               strokeWidth: 10,
          //               backgroundColor: Colors.yellow,
          //               valueColor:
          //                   const AlwaysStoppedAnimation<Color>(Colors.red),
          //               value: _progressValue1,
          //             ),
          //             Text('${(_progressValue1 * 100).round()}%'),
          //           ],
          //         )
          //       : const Text("Press button for downloading",
          //           style: TextStyle(fontSize: 25)),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       _loading1 = !_loading1;
          //       _progressValue1 = 0;
          //       _updateProgress1();
          //     });
          //   },
          //   child: const Icon(Icons.cloud_download),
          // ),
        ],
      ),

      //
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         loading = !loading;
      //         _progressValue = 0;
      //         _updateProgress();
      //
      //       });
      //     },
      //     tooltip: 'Download',
      //     child: Icon(Icons.cloud_download),
      //   ),
    );
  }

  // this function updates the progress value
  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }

  // void _updateProgress1() {
  //   const oneSec = Duration(seconds: 1);
  //   Timer.periodic(oneSec, (Timer t) {
  //     setState(() {
  //       _progressValue1 += 0.1;
  //       // we "finish" downloading here
  //       if (_progressValue1.toStringAsFixed(1) == '1.0') {
  //         _loading1 = false;
  //         t.cancel();
  //         return;
  //       }
  //     });
  //   });
  // }
}

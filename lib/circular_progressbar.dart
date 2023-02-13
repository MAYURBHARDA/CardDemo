import 'dart:async';

import 'package:flutter/material.dart';

class CircularProgressBars extends StatefulWidget {
  const CircularProgressBars({super.key});
  @override
  State<CircularProgressBars> createState() => _CircularProgressBarsState();
}

class _CircularProgressBarsState extends State<CircularProgressBars> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular ProgressBar Demo"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Container(
            child: _loading
                ? Column(
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 10.0,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                        value: _progressValue,
                      ),
                      Text('${(_progressValue * 100).round()}%')
                    ],
                  )
                : const Text(
                    "Press "
                    "Button"
                    " To"
                    " Download",
                    style: TextStyle(fontSize: 25),
                  ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _progressValue = 0;
            _updateProgress();
          });
        },
        child: const Icon(Icons.download),
      ),
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
}

import 'package:first/indicator/linerIndicator.dart';
import 'package:first/indicator/matrial_liner_indicator.dart';
import 'package:flutter/material.dart';

class LinerIndicatorWidgets extends StatelessWidget {
  const LinerIndicatorWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector( onTap: () {
                Navigator.pop(context);
              },child: Text("Home")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">"),
              ),
              Text("Liner Indicator"),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100 , width: double.infinity,child: LinerProgressIndicator()),
            Container(height: 100 , width: double.infinity,child: MaterialLinerProgressIndicator()),
          ],
        ),
      ),
    );
  }
}

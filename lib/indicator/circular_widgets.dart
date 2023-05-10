import 'package:first/indicator/circular_indicator.dart';
import 'package:first/indicator/material_circular_indicator.dart';
import 'package:flutter/material.dart';

class CircularIndicatorWidgets extends StatelessWidget {
  const CircularIndicatorWidgets({Key? key}) : super(key: key);

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
              Text("Circular Indicator"),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100 , width: double.infinity,child: CircluerProgressIndicator()),
            Container(height: 150 , width: double.infinity,child: MaterialCircularIndicator()),
          ],
        ),
      ),
    );
  }
}
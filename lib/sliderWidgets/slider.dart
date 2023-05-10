import 'package:first/sliderWidgets/materialSlider.dart';
import 'package:first/sliderWidgets/newSlider.dart';
import 'package:first/sliderWidgets/normaSlider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

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
              Text("Slider"),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Container(
                  color: Colors.lightBlueAccent[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        color: Colors.lightBlueAccent[100],
                        child: Text("Normal Slider",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OldSlider()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Container(
                  color: Colors.lightBlueAccent[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        color: Colors.lightBlueAccent[100],
                        child: Text("Material Slider",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewSlider()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Container(
                  color: Colors.lightBlueAccent[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        color: Colors.lightBlueAccent[100],
                        child: Text("New Slider",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdSlider()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

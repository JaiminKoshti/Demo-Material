import 'package:flutter/material.dart';

class ThreeSlider extends StatelessWidget {
  const ThreeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ThirdSlider(),
      ),
    );
  }
}

class ThirdSlider extends StatefulWidget {
  const ThirdSlider({super.key});

  @override
  State<ThirdSlider> createState() => _ThirdSlider();
}
class _ThirdSlider extends State<ThirdSlider> {
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text("Home")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(">"),
            ),
            GestureDetector(onTap: () {
              Navigator.pop(context);
            },child: Text("Slider")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(">"),
            ),
            Text("New Slider"),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            value: _currentSliderPrimaryValue,
            secondaryTrackValue: _currentSliderSecondaryValue,
            label: _currentSliderPrimaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderPrimaryValue = value;
              });
            },
          ),
          Slider(
            value: _currentSliderSecondaryValue,
            label: _currentSliderSecondaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderSecondaryValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NormaSlider extends StatelessWidget {
  const NormaSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OldSlider(),
      ),
    );
  }
}

class OldSlider extends StatefulWidget {
  const OldSlider({super.key});

  @override
  State<OldSlider> createState() => _OldSlider();
}

class _OldSlider extends State<OldSlider> {
  double _currentSliderValue = 20;

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
            Text("Normal Slider"),
          ],
        ),
      ),
      body: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}

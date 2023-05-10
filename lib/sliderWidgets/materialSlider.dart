import 'package:flutter/material.dart';

class MaterialSlider extends StatelessWidget {
  const MaterialSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NewSlider(),
      ),
    );
  }
}

class NewSlider extends StatefulWidget {
  const NewSlider({super.key});

  @override
  State<NewSlider> createState() => _NewSlider();
}
class _NewSlider extends State<NewSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("Home" , style: TextStyle(color: Colors.white),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">",style: TextStyle(color: Colors.white)),
              ),
              GestureDetector(onTap: () {
                Navigator.pop(context);
              },child: Text("Slider",style: TextStyle(color: Colors.white))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">" , style: TextStyle(color: Colors.white)),
              ),
              Text("Material Slider" ,style: TextStyle(color: Colors.white)),
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
      ),
    );
  }
}

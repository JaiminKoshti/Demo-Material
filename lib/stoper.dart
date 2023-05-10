import 'package:flutter/material.dart';

class Stoper extends StatelessWidget {
  const Stoper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Home" , style: TextStyle(color: Colors.white),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">",style: TextStyle(color: Colors.white)),
              ),
              Text("Stoper",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Center(
            child: StoperWidget()
        ),
      ),
    );
  }
}

class StoperWidget extends StatefulWidget {
  const StoperWidget({super.key});

  @override
  State<StoperWidget> createState() => _StoperWidget();
}

class _StoperWidget extends State<StoperWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
          title: const Text('Step 1 title'),
          content: Container(
              alignment: Alignment.center,
              child: const Text('Content for Step 1')),
        ),
        const Step(
          title: Text('Step 2 title'),
          content: Text('Content for Step 2'),
        ),
      ],
    );
  }
}

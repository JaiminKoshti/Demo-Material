import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({Key? key}) : super(key: key);

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
                  child: Text("Home")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(">"),
              ),
              Text("Radio Button"),
            ],
          ),
        ),
        body: Center(child: Container(alignment: Alignment.center ,height: 100 , width: double.infinity,child: RadioBtn())),
      ),
    );
  }
}

enum SingingCharacter { Dominoz, PizzHat }
class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

  @override
  State<RadioBtn> createState() => _RadioBtn();
}
class _RadioBtn extends State<RadioBtn> {
  SingingCharacter? _character = SingingCharacter.Dominoz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Dominoz'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Dominoz,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('PizzHat'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.PizzHat,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

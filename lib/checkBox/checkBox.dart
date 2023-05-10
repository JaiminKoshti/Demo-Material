import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CheckBox extends StatelessWidget {
  const CheckBox(
      {Key? key})
      : super(key: key);

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
              Text("Check Box",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dynamic Check Box : "),
            MyCheckBox(),
            SizedBox(width: 20,),
            Text("Normal Check Box : "),
            Container(width: 30 , height: 100,child: MyHomePage()),
          ],
        )),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBox();
}
class _MyCheckBox extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
              child: Checkbox( //only check box
                  value: check1, //unchecked
                  onChanged: (bool? value){
                    //value returned when checkbox is clicked
                    setState(() {
                      check1 = value;
                    });
                  }
              )
          ),
        ),
      ),
    );
  }
}

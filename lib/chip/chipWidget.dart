import 'package:first/actionChip.dart';
import 'package:first/chip/filterChip.dart';
import 'package:flutter/material.dart';

class ChipWidgets extends StatelessWidget {
  const ChipWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
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
              Text("Chip",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Center(
          child: Column(
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
                          child: Text("Action Chip",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ActionChipExample()));
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
                          child: Text("Filter Chip",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterChipWidgets()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




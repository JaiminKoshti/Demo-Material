import 'package:flutter/material.dart';

/*class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: BottomNavigationWidgets()),
    );
  }
}*/

class BottomNavigationWidgets extends StatefulWidget {
  const BottomNavigationWidgets({super.key});

  @override
  State<BottomNavigationWidgets> createState() => _BottomNavigationWidgets();
}

class _BottomNavigationWidgets extends State<BottomNavigationWidgets> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            },child: Text("Bottom",style: TextStyle(color: Colors.white))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(">" , style: TextStyle(color: Colors.white)),
            ),
            Text("Material Bottom" ,style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

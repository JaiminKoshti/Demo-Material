import 'package:first/bottomNavigation/bottom.dart';
import 'package:first/bottomNavigation/bottomNavigation.dart';
import 'package:first/checkBox/checkBox.dart';
import 'package:first/chip/chipWidget.dart';
import 'package:first/picker/timePicker.dart';
import 'package:first/indicator/circular_widgets.dart';
import 'package:first/indicator/indicatorWidgets.dart';
import 'package:first/picker/datePicker.dart';
import 'package:first/dialog/dialog.dart';
import 'package:first/dropDownMenu.dart';
import 'package:first/expansionPannel.dart';
import 'package:first/radioButton.dart';
import 'package:first/search/data.dart';
import 'package:first/sliderWidgets/slider.dart';
import 'package:first/snakBar.dart';
import 'package:first/stoper.dart';
import 'package:first/switchScreen.dart';
import 'package:first/tab/tabBar.dart';
import 'package:first/textfields.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  List<Data> datas = allItem;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.search),onPressed: () {
            })
          ],
        ),*/
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 10, top: 20),
                child: Container(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          onPressed: () {
                            if(controller != null){
                              controller.clear();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }else{
                              return;
                            }
                          },
                          icon: Icon(Icons.close),
                        ),
                        hintText: "Search Widgets",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue))),
                    onChanged: searchData,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Flutter Widgets",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 700,
                width: double.infinity,
                child: Expanded(
                    child: ListView.builder(
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    final  data = datas[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
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
                                child: Text(data.item,
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Icon(Icons.navigate_next)
                            ],
                          ),
                        ),
                        onTap: () {
                          if (data.position == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SliderScreen()));
                          } else if (data.position == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SwitchScreen()));
                          } else if (data.position == 3) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SnakBar()));
                          } else if (data.position == 4) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RadioButton()));
                          } else if (data.position == 5) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DatePicker()));
                          } else if (data.position == 6) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckBox()));
                          } else if (data.position == 7) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DropDownButton()));
                          } else if (data.position == 8) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DialogExample()));
                          } else if (data.position == 9) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Stoper()));
                          } else if (data.position == 10) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChipWidgets()));
                          } else if (data.position == 11) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ExpansionPannel()));
                          }else if (data.position == 12) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottom()));
                          }else if (data.position == 13) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyTabBar()));
                          }else if (data.position == 14) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TextFieldsWidgets()));
                          }else if (data.position == 15) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimePicker()));
                          }else if (data.position == 16) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LinerIndicatorWidgets()));
                          }else if (data.position == 17) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CircularIndicatorWidgets()));
                          }
                        },
                      ),
                    );
                  },
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void searchData(String query) {
    final suggestion = allItem.where((data) {
      final itemName = data.item.toUpperCase();
      final input = query.toUpperCase();

      return itemName.contains(input);
    }).toList();

    setState(() => datas = suggestion);
  }
}

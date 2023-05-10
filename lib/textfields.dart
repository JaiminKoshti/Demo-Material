import 'package:flutter/material.dart';

class TextFieldsWidgets extends StatefulWidget {
  const TextFieldsWidgets({Key? key}) : super(key: key);

  @override
  State<TextFieldsWidgets> createState() => _TextFieldsWidgetsState();
}

class _TextFieldsWidgetsState extends State<TextFieldsWidgets> {

  bool passwordVisible=true;

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
              Text("TextFields",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hoverColor: Colors.deepPurple,
                  suffixIcon: Icon(Icons.new_releases_outlined),
                  hintText: 'Name',
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password",
                  helperText:"Password must need special character",
                  helperStyle:TextStyle(color:Colors.black),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(
                            () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  //errorMaxLines: 1,
                  hoverColor: Colors.deepPurple,
                  hintText: 'Number',
                ),
                maxLength: 10,
                textInputAction: TextInputAction.next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

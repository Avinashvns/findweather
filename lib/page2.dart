import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

class Page2App extends StatefulWidget {
  @override
  _Page2AppState createState() => _Page2AppState();
/* _WeatherAppState createState(){
    return _WeatherAppState();}  */
}

class _Page2AppState extends State<Page2App> {
  Widget w=Text("welcome in page 2",style: TextStyle(fontSize: 40),);
  void f1(){
    setState(() {
  w=Page1App();
    });

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          Card(
            color: Colors.yellowAccent,
            child: w,
          ),
          FlatButton(
            color: Colors.red,
            child: Text("back ",style: TextStyle(
              fontSize: 40,
            ),
            ),
            onPressed: () {
              print("First page");
              f1();
            },
          ),


        ],
      ),
    );
  }
}

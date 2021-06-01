import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:geolocator/geolocator.dart';

class Page1App extends StatefulWidget {

  @override
  _Page1AppState createState() => _Page1AppState();
/* _WeatherAppState createState(){
    return _WeatherAppState();}  */
}

class _Page1AppState extends State<Page1App> {
  Widget w=Text("welcome in page 1",style: TextStyle(fontSize: 40),);
  String s="Hi";
  void f1(){
    String s="welcome";
    print("$s");

  }
  getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
    return position;}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          Card(
            color: Colors.deepPurple,
            child: w,
            ),
          


          FlatButton(
            color: Colors.red,
            child: Text("next page",style: TextStyle(fontSize: 40,),),
            onPressed: () {
              //print("welcome More");
              setState(() {
                //print("run");
                f1();
                getCurrentLocation();
              });

            },
          ),


        ],
      ),
    );
  }
}

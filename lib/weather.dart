
import 'dart:ui';
import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget{
  @override
  _WeatherAppState createState ()=> _WeatherAppState();
  /* _WeatherAppState createState(){
    return _WeatherAppState();}  */
}

class _WeatherAppState extends State<WeatherApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(

     appBar: AppBar(
       backgroundColor: Colors.yellow,
       title: Card(
         color: Colors.redAccent,
         
         child: Text("WEATHER KNOWLEDGE",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
       ),
     ),

    ),
    );
  }
}
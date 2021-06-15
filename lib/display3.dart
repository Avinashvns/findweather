
import 'package:flutter/material.dart';
import 'weather.dart';
import 'avinashjson.dart';
import 'locationclass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:findweather/networkdownloader.dart';

class Display3 extends StatefulWidget {

  _Display3State createState()=> _Display3State();
}
class _Display3State extends State<Display3>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("w3 Data",style: TextStyle(fontSize: 35),),
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "longitude=",
              style: TextStyle(color: Colors.red,fontSize: 30),
            ),

            SizedBox(height: 30,),

            FlatButton(child: Text("Show Weather",style: TextStyle(fontSize: 35),),
              color: Colors.pink,onPressed: ()async{

              },),
            SizedBox(height: 20,),

            FlatButton(child: Text("Back to main page",style: TextStyle(fontSize: 35),),
              color: Colors.red,onPressed: (){
                Navigator.pop(context);
              },),
          ],
        ),
      ),
    );
  }

}
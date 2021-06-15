
import 'package:flutter/material.dart';
import 'weather.dart';
import 'avinashjson.dart';
import 'locationclass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:findweather/networkdownloader.dart';
import 'display2.dart';

class SeeWeather extends StatefulWidget {
 _SeeWeatherState createState()=> _SeeWeatherState();
}
class _SeeWeatherState extends State<SeeWeather>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("See Weather",style: TextStyle(fontSize: 35),),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Rain=${WeatherData.rain}",
              style: TextStyle(color: Colors.red,fontSize: 25),
            ),
            SizedBox(height: 20,),
            Text(
              "Name=${WeatherData.name}",
              style: TextStyle(color: Colors.yellow,fontSize: 30),
            ),

            SizedBox(height: 30,),

            FlatButton(child: Text("see Weather",style: TextStyle(fontSize: 35),),
              color: Colors.pink,onPressed: (){
              print("hi");
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
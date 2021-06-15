import 'package:findweather/display2.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'locationclass.dart';
import 'avinashjson.dart';
import 'display2.dart';
import 'package:findweather/networkdownloader.dart';

class WeatherStarter extends StatefulWidget {
  static LookLocation l = LookLocation();
  static WeatherData f=WeatherData();
  //static NetworkDownloader n=NetworkDownloader();

  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {


  Future getLocation() async {
    Position location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    return location;
  }

  @override
  void initState() {
    super.initState();
    setLocation();
  }

  void setLocation() async {
    var location = await getLocation();
    setState(() {
      //data = location.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 30,),
      FlatButton(
        child: Text(
          "Press This",
          style: TextStyle(color: Colors.yellow),
        ),
        onPressed: () async {
          print("ok");

          await WeatherStarter.l.getLocation();
          //print("longitude=${WeatherStarter.l.longitude}");
          //print("latitude=${WeatherStarter.l.latitude}");
          //var location=await getLocation();
          String link="https://api.openweathermap.org/data/2.5/find?lat=25.281677&lon=82.9968792&cnt=10&appid=b007b683fb7bad77392ba419766a08c7";
          await WeatherData.weatherApi(link);


          Navigator.push(context,MaterialPageRoute(builder: (context)=>Display2()),);
          setState(() {
            //data=location.toString();

          });
        },
      ),

      Text(
        "longitude=",
        style: TextStyle(color: Colors.teal),
      ),
      Text(
        WeatherStarter.l.longitude.toString(),
        style: TextStyle(color: Colors.teal),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "latitude=",
        style: TextStyle(color: Colors.teal),
      ),
      Text(
        WeatherStarter.l.latitude.toString(),
        style: TextStyle(color: Colors.teal),
      ),




    ]);
  }
}

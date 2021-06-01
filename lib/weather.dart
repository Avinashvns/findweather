import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';

class WeatherStarter extends StatefulWidget {
  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {
String data="Weather Known";
Future getLocation()async{
  Position location=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  return location;

}
@override
void initState(){
  super.initState();
  setLocation();
}
void setLocation()async{
  var location=await getLocation();
  setState(() {
    data=location.toString();
  });
}
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Text(
        data,
        style: TextStyle(color: Colors.teal),
      ),
      FlatButton(
        child: Text(
          "Press This",
          style: TextStyle(color: Colors.yellow),
        ),
        onPressed: ()async{
          print("ok");
          var location=await getLocation();
          setState(() {
          data=location.toString();
          });
        },
      ),
    ]);
  }
}
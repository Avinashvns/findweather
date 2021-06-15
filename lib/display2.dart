
import 'package:flutter/material.dart';
import 'weather.dart';
import 'avinashjson.dart';
import 'locationclass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:findweather/networkdownloader.dart';
import 'display3.dart';
import 'package:findweather/seeweather.dart';


class Display2 extends StatefulWidget {

_Display2State createState()=> _Display2State();
}
class _Display2State extends State<Display2>{

  String longi="${WeatherStarter.l.longitude}";
  String lati="${WeatherStarter.l.latitude}";



  void initState() {
    super.initState();
    setLocation();
  }
  void setLocation()async{
      setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data",style: TextStyle(fontSize: 35),),
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "longitude=",
              style: TextStyle(color: Colors.red,fontSize: 30),
            ),
            Text(
              longi,
              style: TextStyle(color: Colors.yellow,fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "latitude=",
              style: TextStyle(color: Colors.yellow,fontSize: 20)),
            Text(
              lati,
              style: TextStyle(color: Colors.red,fontSize: 30),
            ),
            SizedBox(height: 20,),

               FlatButton(child: Text("Show Weather",style: TextStyle(fontSize: 35),),
                color: Colors.pink,onPressed: ()async{
                    // longitude & latitude se city nikalna
                    print("yes");
                    String link="https://api.openweathermap.org/data/2.5/find?lat=$lati&lon=$longi&cnt=10&appid=${WeatherData.apikey}";
                    await NetworkDownloader.getNetworkData(link);
                    //print(link);
                    //print(NetworkDownloader.weatherdata);
                    await WeatherData.weatherApi(link);
                    print("no");
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SeeWeather()),);
                    setState(() {
                      //data=location.toString();

                    });
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
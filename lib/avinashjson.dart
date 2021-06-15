import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:async/async.dart';
import 'package:findweather/networkdownloader.dart';

class WeatherData {
  static String apikey = "b007b683fb7bad77392ba419766a08c7";
    //static String main="";
    static String temp="";
    static String name="";
    static String humidity="";
    static String rain="";
    static String country="";

  static void weatherApi(String link) async {

    //String link = "https://api.openweathermap.org/data/2.5/weather?q=Varanasi&appid=$apikey";
    //Uri uri = Uri.parse(link);
    //http.Response response = await NetworkDownloader.getNetworkData(link);
    var z=await NetworkDownloader.getNetworkData(link);
    //print(response.body);
    //print(response.statusCode);
    //var z = jsonDecode(response.body);

     name=z['list'][0]['name'].toString();
    print(name);
     temp=z['list'][0]['main']['temp'].toString();
    print(temp);
     humidity=z['list'][0]['main']['humidity'].toString();
    print(humidity);
     country=z['list'][0]['sys']['country'].toString();
    print(country);
     rain=z['list'][0]['rain'].toString();
    print(rain);
  }
}
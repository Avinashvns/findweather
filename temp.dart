


import 'package:async/async.dart';
//import 'package:findweather/locationclass.dart';
import 'package:findweather/networkdownloader.dart';

void main()async{
  print("Start");
  NetworkDownloader n=NetworkDownloader();
  double long=82.9968793;
  double lati=25.2816769;
  String apikey="b007b683fb7bad77392ba419766a08c7";
  String link="https://api.openweathermap.org/data/2.5/find?lat=$lati&lon=$long&cnt=10&appid=$apikey";

  dynamic d=await NetworkDownloader.getNetworkData(link);
  print(d);
 }

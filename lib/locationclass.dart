
//import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'weather.dart';

class LookLocation {
  double latitude = 0;
  double longitude = 0;

  void getLocation() async{

      Position location = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
       this.latitude=location.latitude;
       this.longitude=location.longitude;
    }


}
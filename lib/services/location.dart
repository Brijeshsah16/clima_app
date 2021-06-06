import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class Location{
    double latitude;
    double Longitude;

    Future<void> getCurrentLocaton() async {
      try {
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        latitude=position.latitude;
        Longitude=position.longitude;
      }
      catch(e){
        print(e);
      }
    }

}

// double temp=decodedData['main']['temp'];
// int  conditon=decodedData['weather'][0]['id'];
// String city=decodedData['name'];
// // print(temp);
// // print(conditon);
// // print(city);
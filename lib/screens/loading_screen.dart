import 'dart:convert';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocationdata();

  }
 void getlocationdata() async{
     WeatherModel weather=WeatherModel();
      var weatherdata= await weather.getlocationweather();
 Navigator.push(
     this.context,
     MaterialPageRoute(builder: (context) => LocationScreen(
       locationweather: weatherdata,
     )

   ));}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0,
          ),
        ),
    );
  }
}

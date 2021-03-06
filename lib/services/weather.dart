import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';
const appkey='33b357e51ac263d8433607ca736abfea';
class WeatherModel {
  Future<dynamic> getcitydata(String cityname) async{
  var url='https://api.openweathermap.org/data/2.5/weather?q=$cityname&appid=$appkey&units=metric';
  NetworkHelper networkHelper=NetworkHelper(url);
  var weatherdata= await networkHelper.getdata();
  return weatherdata;
  }
  Future<dynamic> getlocationweather() async{
    Location location=Location();
    await  location.getCurrentLocaton();
    NetworkHelper networkHelper=NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.Longitude}&appid=$appkey&units=metric');
    var weatherdata= await networkHelper.getdata();
    return weatherdata;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}

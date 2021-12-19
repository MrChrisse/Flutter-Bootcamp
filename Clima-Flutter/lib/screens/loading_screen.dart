import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location position = Location();
    await position.getCurrentLocation();
    print("Longitude: " + position.getLongitude.toString());
    print("Latitude: " + position.getLatitude.toString());
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22'));
    if (response.statusCode == 200) {
      double temperature = jsonDecode(response.body)['main']['temp'];
      print(temperature);

      int condition = jsonDecode(response.body)['weather'][0]['id'];
      print(condition);
      String cityName = jsonDecode(response.body)['name'];
      print(cityName);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}

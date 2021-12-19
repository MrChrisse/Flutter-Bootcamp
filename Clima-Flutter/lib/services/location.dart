import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  void getCurrentLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position =
          await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double get getLatitude => this.latitude;

  set setLatitude(latitude) => this.latitude = latitude;

  double get getLongitude => this.longitude;

  set setLongitude(longitude) => this.longitude = longitude;
}

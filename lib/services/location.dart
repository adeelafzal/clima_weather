import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, logitued;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      logitued = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

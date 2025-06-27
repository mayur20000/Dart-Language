import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geocoding/geocoding.dart';

void main() {
  runApp(MaterialApp(home: LocationScreen()));
}

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String location = "📍 Location will appear here";

  Future<void> _getLocation() async {
    // Request permission
    PermissionStatus permission = await Permission.location.request();

    if (permission.isGranted) {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() => location = "❌ Location services are disabled.");
        return;
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      // Convert coordinates to address (reverse geocoding)
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        String fullAddress =
            "${place.name}, ${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}";

        setState(() {
          location = "📌 $fullAddress\n\n📍 (${position.latitude}, ${position.longitude})";
        });
      } else {
        setState(() {
          location = "⚠️ Coordinates fetched but address not found.";
        });
      }
    } else {
      setState(() => location = "❌ Location permission denied.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("📍 Get Location & Address")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(location, textAlign: TextAlign.center),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _getLocation,
                child: Text("🔍 Get My Address"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

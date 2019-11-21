import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageSampleState();
}

class MapPageSampleState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(-23.224448, -45.884580),
          zoom: 12,
        ),
      ),
    );
  }
}

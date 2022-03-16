import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCollect extends StatefulWidget {
  MapCollect({Key? key}) : super(key: key);

  @override
  State<MapCollect> createState() => _MapCollectState();
}

class _MapCollectState extends State<MapCollect> {
  GoogleMapController? newGoogleMapController;
  double? latitude;
  double? longitude;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
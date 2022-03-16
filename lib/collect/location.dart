import 'package:flutter/material.dart';
import 'dart:async';
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
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.964312011964864,-0.39474156918246783),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
          // gestureRecognizers: Set()
          //   ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer()))
          //   ..add(
          //       Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()))
          //   ..add(Factory<TapGestureRecognizer>(() => TapGestureRecognizer()))
          //   ..add(Factory<VerticalDragGestureRecognizer>(
          //       () => VerticalDragGestureRecognizer())),
          mapType: MapType.hybrid,
          myLocationButtonEnabled:true,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          zoomGesturesEnabled: true,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            // getLocation();
          },
        );
  }
}

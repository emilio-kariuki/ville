import 'dart:io';
import 'dart:async';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:path/path.dart';
import 'package:ville/Screens/items.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/constants/constants.dart';
import 'package:geolocator/geolocator.dart' hide ServiceStatus;
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Activity{
  static GoogleMapController? newGoogleMapController;
  static double? latitude;
  static double? longitude;
  static getPermission(latitude,longitude) async {
    PermissionStatus permission =
        await LocationPermissions().requestPermissions();
    ServiceStatus serviceStatus =
        await LocationPermissions().checkServiceStatus();
    // bool isOpened = await LocationPermissions().openAppSettings();
    bool isShown =
        await LocationPermissions().shouldShowRequestPermissionRationale();
    var locate = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    // print(locate.longitude);
    latitude = locate.latitude;
    longitude = locate.longitude;
  }

  static getLocation(latitude,longitude) {
    getPermission(latitude,longitude).then((locate) {
      print(longitude);
      print(latitude);
      LatLng ltPosition = LatLng(latitude!, longitude!);
      CameraPosition cameraPosition =
          CameraPosition(target: ltPosition, zoom: 10);
      // ignore: unused_local_variable
      newGoogleMapController
          ?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
  }
}
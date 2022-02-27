// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/constants/constants.dart';
import 'package:geolocator/geolocator.dart'hide ServiceStatus;
import 'package:image_picker/image_picker.dart';

class Post extends StatefulWidget {
  Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  GoogleMapController? newGoogleMapController;
  double? latitude;
  double? longitude;
  double? lat;
  double? long;

  // LatLng ltPosition = LatLng(latitude!, longitude!);
  getPermission() async {
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
    lat = locate.latitude;
    long = locate.longitude;
  }

  getLocation() {
    getPermission().then((locate) {
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
   List<String> items = [
    'maize',
    "spinach",
    "kales",
    "beans",
    "cabbage",
    "Sorghum",
    "peas",
    "green grams",
    "carrots",
    "onions",
    'Tomatoes',
    "potatoes",
    'capcicum',
    'coriander',
    'pumpkins',
    ''
  ];
  String ?selectedType;
  File? image;
  ImagePicker picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final image = await picker.pickImage(source: source);
    try {
      if (image == null) return;

      final imageTempo = File(image.path);
      setState(() {
        this.image = imageTempo;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image $e");
    }
  }

  final title = TextEditingController();
  final description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 245, 96, 10),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 15, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Title",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 23,
                        color: kGreen,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextFormField(
              maxLength: 15,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // icon: Icon(Icons.person,size:30,color: Colors.black),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  focusColor: Colors.red,
                  hintText: "Summary of the waste",
                  // suffixText: "10",
                  // prefixIcon: Icon(Icons.mail,color: Colors.blueGrey[900]),
                  fillColor: Colors.grey[200]),
              controller: title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Description",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 23,
                        color: kGreen,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextFormField(
              minLines: 2,
              maxLines: 10,
              keyboardType: TextInputType.multiline,
              // style: TextStyle(height:10),
              maxLength: 360,
              decoration: InputDecoration(
                // contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // icon: Icon(Icons.person,size:30,color: Colors.black),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  focusColor: Colors.red,
                  hintText: "Summary of the waste",
                  // suffixText: "10",
                  // prefixIcon: Icon(Icons.mail,color: Colors.blueGrey[900]),
                  fillColor: Colors.grey[200]),
              controller: description,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Type of Waste",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 23,
                        color: kGreen,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(left:20,right:20,top: 10),
             child: DropdownButton2(
               hint:Text("Choose waste"),
               value: selectedType,
               onChanged: (value) {
                 setState(() {
                   selectedType =
                       value as String;
                   print(selectedType);
                 });
               },
               icon: const Icon(
                 Icons
                     .arrow_forward_ios_outlined,
               ),
               iconSize: 18,
               iconEnabledColor: kGreen,
               iconDisabledColor: Color.fromARGB(
                   255, 255, 255, 255),
               buttonHeight: size.height * 0.07,
               buttonWidth: size.width ,
               items: items
                   .map((item) =>
                       DropdownMenuItem<String>(
                         value: item,
                         child: Text(
                           item,
                           style: GoogleFonts
                               .notoSerif(
                                   fontSize: 18,
                                   color: kGreen,
                                   fontWeight:
                                       FontWeight
                                           .w600),
                           overflow: TextOverflow
                               .ellipsis,
                         ),
                       ))
                   .toList(),
               buttonPadding:
                   const EdgeInsets.only(
                       left: 14, right: 14),
               buttonDecoration: BoxDecoration(
                 borderRadius:
                     BorderRadius.circular(10),
                 border: Border.all(
                   width: 1,
                   color: Color.fromARGB(255, 87, 86, 86),
                 ),
                 color: Color.fromARGB(255, 238, 237, 237),
               ),
               buttonElevation: 5,
               itemHeight: 40,
               itemPadding:
                   const EdgeInsets.only(
                       left: 14, right: 14),
               dropdownMaxHeight: 200,
               dropdownWidth: 200,
               dropdownPadding:
                   EdgeInsets.only(top: 3),
               dropdownDecoration: BoxDecoration(
                 color: Color.fromARGB(
                     255, 238, 235, 235),
               ),
               dropdownElevation: 5,
               scrollbarRadius:
                   const Radius.circular(20),
               scrollbarThickness: 10,
               scrollbarAlwaysShow: true,
              //  offset: const Offset(18, -50),
             ),
           ),
           Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Location",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 23,
                        color: kGreen,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextFormField(
              maxLength: 15,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // icon: Icon(Icons.person,size:30,color: Colors.black),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  focusColor: Colors.red,
                  hintText: "Enter Location",
                  // suffixText: "10",
                  // prefixIcon: Icon(Icons.mail,color: Colors.blueGrey[900]),
                  fillColor: Colors.grey[200]),
              controller: title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Images",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 23,
                        color: kGreen,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}

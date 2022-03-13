import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ville/Screens/splash.dart';
// import 'package:introduction_screen/introduction_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp( );
  runApp(const MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}


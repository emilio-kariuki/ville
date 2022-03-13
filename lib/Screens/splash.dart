
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/Screens/introduction_screens.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Introduction()),
            ));
            
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 255, 255, 255),
      extendBodyBehindAppBar: true,
      body: Center(child: Image.asset('assets/images/ville.png'),)
    );
  }
}
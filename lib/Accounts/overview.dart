import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/Icon_build.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IconBuild(iconUrl: "assets/images/pin.png"),
                Text("EcoVille",
                    style: GoogleFonts.roboto(
                        fontSize: 25,
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontWeight: FontWeight.w500)),
                
              ],
            ),
            Image.asset('assets/images/over.jpg', width: size.width),
          ],
        ),
      ),
    );
  }
}

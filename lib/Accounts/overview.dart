import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("EcoVille",style: GoogleFonts.roboto(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
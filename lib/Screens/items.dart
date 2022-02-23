import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Items extends StatefulWidget {
  Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 96, 10),
      body: Center(child: Text("Items",style: GoogleFonts.roboto(fontSize: 50, color: Colors.white))),
    );
  }
}
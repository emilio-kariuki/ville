import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 96, 10),
      body: Center(child: Text("Notifiations",style: GoogleFonts.roboto(fontSize: 50, color: Colors.white))),
    );
  }
}

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/constants/constants.dart';

class Post extends StatefulWidget {
  Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 245, 96, 10),
        body: SafeArea(
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
      ]),
    ));
  }
}

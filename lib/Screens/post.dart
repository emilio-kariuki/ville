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
        
      ]),
    ));
  }
}

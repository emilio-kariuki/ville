import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';


class Post extends StatefulWidget {
  Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 245, 96, 10),
      body: Text("Post",style: GoogleFonts.roboto(fontSize: 50, color: Colors.white)),
    );
  }
}
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';

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
        body: SafeArea(
          child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppIcon(
            iconUrl: "assets/images/back.png",
            func: () {
                Navigator.of(context).pop();
            }),
              )
            ]),
        ));
  }
}

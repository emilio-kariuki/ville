import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListBuilder1 extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String location;
  final String action;
  const ListBuilder1(
      {Key? key,
      required this.imageUrl,
      required this.category,
      required this.location,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      // width: 60,
        child: Column(children: [
      Container(
        height: size.height * 0.14,
         width: 80,
        // width: size.width * 0.26,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ))),
      SizedBox(height: size.height * 0.02),
      Text(category,
          style: GoogleFonts.roboto(
              fontSize: 18, color: Color.fromARGB(255, 61, 122, 63))),
      SizedBox(height: size.height * 0.02),
      AutoSizeText(location,
           textAlign: TextAlign.center,
           overflow: TextOverflow.ellipsis,
           softWrap: true,
          style: GoogleFonts.roboto(
              fontSize: 18, color: Color.fromARGB(255, 68, 70, 68))),
      SizedBox(height: size.height * 0.02),
      // ignore: deprecated_member_use
      FlatButton(onPressed: () {}, child: Text(action),color: Colors.green)
    ]));
  }
}

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Indicate extends StatelessWidget {
  final String imageUrl;
  final String action;
  const Indicate({Key? key, required this.imageUrl, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.2,
        width: size.width * 0.1,
        child: Column(
          children: [
            Container(
                height: size.height * 0.1,
                width: 40,
                // width: size.width * 0.26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ))),
            Text(action,style: GoogleFonts.roboto(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500))
          ],
        ));
  }
}

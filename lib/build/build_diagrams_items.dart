import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/constants/constants.dart';

class DisplayItems extends StatelessWidget {
  final String imageUrl;
  final String location;
  final String category;
  final int distance;
  const DisplayItems(
      {Key? key,
      required this.imageUrl,
      required this.category,
      required this.location,
      required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.3,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: size.height * 0.17,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ))),
              Text(category,
                  style: GoogleFonts.roboto(
                      fontSize: 24, color: Color.fromARGB(255, 7, 6, 12))),
              const SizedBox(height: 5),
              Text(location,
                  style: GoogleFonts.roboto(fontSize: 24, color: kGreen)),
              const SizedBox(height: 5),
              Text('$distance km',
                  style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey)),
              ],
            ),
            Positioned(
              top: 5,
              right: 5,
              child: AppIcon(
                iconUrl: "assets/images/mail.png",
                func: (){},)),
            Positioned(
              bottom: 5,
              right: 5,
              child: AppIcon(
                iconUrl: "assets/images/mail.png",
                func: (){},))
            ],
            ),
        )
        );
  }
}
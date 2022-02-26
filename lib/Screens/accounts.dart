// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';


class Accounts extends StatefulWidget {
  Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: ColorfulSafeArea(
        overflowRules: OverflowRules.all(true),
        child: ListView(
          children: [
             Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.1),
                  height: size.height * 0.22,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/plant.jpg"),fit:BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: size.height * 0.16,
                  child: Container(
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color.fromARGB(255, 46, 119, 49),width: 5)
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      radius: 50,
                    ),
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIcon(iconUrl: "assets/images/mail.png", func: (){}),
                AppIcon(iconUrl: "assets/images/phone.png", func: (){}),
                AppIcon(iconUrl: "assets/images/twitter.png", func: (){}),
              ],
            ),
            Row(
              children: [
                Text("Statistics",style: GoogleFonts.roboto(fontSize: 26,color: Colors.green))
              ],
            )
          ],
        )
      )
    );
  }
}
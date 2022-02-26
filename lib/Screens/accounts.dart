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
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
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
                  shape: BoxShape.circle,
                  border: Border.all(color: Color.fromARGB(255, 44, 117, 47),width: 5),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius: 50,
                ),
              )
            )
          ],
        )
      )
    );
  }
}
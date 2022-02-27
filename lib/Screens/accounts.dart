// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/build/list_builder.dart';
import 'package:ville/constants/constants.dart';

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
        body: SafeArea(
          child: ColorfulSafeArea(
              overflowRules: OverflowRules.all(true),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: kGreen,width: 5)
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  )
                ],
            )
              ),
        )
    );
  }
}

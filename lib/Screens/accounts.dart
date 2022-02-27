// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/Screens/graph.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/build/list_builder.dart';
import 'package:ville/constants/constants.dart';

class Accounts extends StatefulWidget {
  Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  String name = "Jane Doe";
  String point = '1000';
  String collected = '56';
  String recycled = '4';
  String posted = '14';
  // String points = point.toString();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          child: ColorfulSafeArea(
              overflowRules: OverflowRules.all(true),
              child: SingleChildScrollView(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: kGreen, width: 5)),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/profile.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Text(name,
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 23,
                            color: kGreen,
                            fontWeight: FontWeight.w600)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("$point points",
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 18,
                              color: kBlack,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppIcon(iconUrl: "assets/images/mail.png", func: () {}),
                        AppIcon(
                            iconUrl: "assets/images/phone.png", func: () {}),
                        AppIcon(
                            iconUrl: "assets/images/twitter.png", func: () {}),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Statistics",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 23,
                                  color: kGreen,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(posted,
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 18,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                            Text('Posted',
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(recycled,
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 18,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                            Text('Recycled',
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Column(
                          children: [
                            Text(collected,
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 18,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                            Text('Collected',
                                style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    color: kGrey,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Recent Posts",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 23,
                                  color: kGreen,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.35,
                      // width: 100,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) => Center(child: ListBuilder1(imageUrl: 'assets/images/plant.jpg',category: "plastic",location: "Dedan Kimathi University",action: "Completed",)),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 10,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Lastweek",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 23,
                                  color: kGreen,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    LineChartSample2(),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 10,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Saved",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 23,
                                  color: kGreen,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.35,
                      // width: 100,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) => Center(child: ListBuilder1(imageUrl: 'assets/images/plant.jpg',category: "plastic",location: "Dedan Kimathi University",action: "Collect",)),
                      ),
                    ),

                  ],
                ),
              )),
        ));
  }
}

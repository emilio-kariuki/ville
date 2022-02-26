// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_icon.dart';
import 'package:ville/build/list_builder.dart';


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
                  margin: EdgeInsets.only(bottom: size.height * 0.07),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Column(
                children: [
                  Text("Jane Doe",style: GoogleFonts.roboto(fontSize: 25,color: Color.fromARGB(255, 18, 51, 19), fontWeight: FontWeight.w700)),
                  Text("1000 points",style: GoogleFonts.roboto(fontSize: 18,color: Color.fromARGB(255, 18, 51, 19), fontWeight: FontWeight.w600)),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(iconUrl: "assets/images/mail.png", func: (){}),
                  AppIcon(iconUrl: "assets/images/phone.png", func: (){}),
                  AppIcon(iconUrl: "assets/images/twitter.png", func: (){}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Statistics",style: GoogleFonts.roboto(fontSize: 23,color: Color.fromARGB(255, 39, 112, 41),fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text("56",style: GoogleFonts.roboto(fontSize: 21,color: Color.fromARGB(255, 36, 36, 36),fontWeight: FontWeight.w500) ),
                  Text("Posted",style: GoogleFonts.roboto(fontSize: 19,color: Color.fromARGB(255, 87, 87, 87),fontWeight: FontWeight.w500) )
                ],),
                Column(children: [
                  Text("56",style: GoogleFonts.roboto(fontSize: 21,color: Color.fromARGB(255, 36, 36, 36),fontWeight: FontWeight.w500) ),
                  Text("Posted",style: GoogleFonts.roboto(fontSize: 19,color: Color.fromARGB(255, 87, 87, 87),fontWeight: FontWeight.w500) )
                ],),
                Column(children: [
                  Text("56",style: GoogleFonts.roboto(fontSize: 21,color: Color.fromARGB(255, 36, 36, 36),fontWeight: FontWeight.w500) ),
                  Text("Posted",style: GoogleFonts.roboto(fontSize: 19,color: Color.fromARGB(255, 87, 87, 87),fontWeight: FontWeight.w500) )
                ],)

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Recent Posts",style: GoogleFonts.roboto(fontSize: 23,color: Color.fromARGB(255, 39, 112, 41),fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    height: size.height * 0.3,
                    // width: size.width * 0.3,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListBuilder1(imageUrl: "assets/images/plant.jpg", category: "plastci waste", location: "Dedan kimathi university", action: "Completed"),
                        SizedBox(width: 10),
                        ListBuilder1(imageUrl: "assets/images/plant.jpg", category: "plastci waste", location: "Dedan kimathi university", action: "Completed")
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        )
      )
    );
  }
}
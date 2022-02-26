// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Column(
          children: [
             Stack(
               alignment: Alignment.center,
               clipBehavior: Clip.none,
               children: [
                 Container(
                    width: size.width,
                    height: size.height * 0.16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                    ),
                    child:Image.asset("assets/images/plant.jpg",fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: size.height * 0.1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 5)
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                        // backgroundColor: Colors.red,
                        radius: size.width * 0.15,
                      ),
                    ))
               ],
               ),
               SizedBox(
                 height: size.height * 0.1,
               ),

        ],)
      )
    );
  }
}
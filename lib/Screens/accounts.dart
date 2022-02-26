// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
                    height: size.height * 0.2,
                    child:Image.asset("assets/images/plant.jpg",fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: size.height * 0.14,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 5)
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: size.width * 0.15,
                      ),
                    ))
               ],
               ),
        ],)
      )
    );
  }
}
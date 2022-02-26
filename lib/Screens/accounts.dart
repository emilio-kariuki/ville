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
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child:Image.asset("assets/images/plant.jpg",fit: BoxFit.cover),
            ),
        Positioned(
          top: 10,
            child: Container(
            width: size.width,
            // height:size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.black,
            )
              ),
          )
          ],
          
        )
      )
    );
  }
}
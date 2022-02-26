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
            Container(
              
              width: size.width,
              child:Image.asset("assets/images/plant.jpg",fit: BoxFit.cover),
            ),
            Expanded(
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text("Emilio"),
                )
              ,)
          ],
        )
      )
    );
  }
}
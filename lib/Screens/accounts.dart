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
        child: Stack(
          fit: StackFit.expand,
          children: [
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: size.height * 0.2,
              child: Container(color: Colors.yellow),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: size.height * 0.5,
              child: Container(color: Colors.yellow),
            )
          ],
        ),
      )
    );
  }
}
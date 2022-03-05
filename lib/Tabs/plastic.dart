// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ville/build/build_diagrams_items.dart';


class Plastic extends StatefulWidget {
  Plastic({Key? key}) : super(key: key);

  @override
  State<Plastic> createState() => _PlasticState();
}

class _PlasticState extends State<Plastic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DisplayItems(
        category: "plastics",
        imageUrl: 'assets/images/pastic.png',
        location: 'Dedan Kimathi University',
        distance: 2000,
      ),
    );
  }
}
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
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
            DisplayItems(
              category: "plastics",
              imageUrl: 'assets/images/pastic.jpg',
              location: 'Dedan Kimathi University',
              distance: 2000,
            ),
          ],
        ),
      ),
    );
  }
}
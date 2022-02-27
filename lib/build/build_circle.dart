import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/build_round.dart';
import 'package:ville/constants/constants.dart';

class BuildCirlce extends StatelessWidget {
  final String imageUrl;
  // final String category;
  const BuildCirlce({Key? key, required this.imageUrl, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildRound(
        child: Image.asset(imageUrl));
  }
}

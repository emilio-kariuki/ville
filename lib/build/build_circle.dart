import "package:flutter/material.dart";
import 'package:ville/build/build_round.dart';

class BuildCirlce extends StatelessWidget {
  final String imageUrl;
  const BuildCirlce({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildRound(
      child: Image.asset(imageUrl,height: 60));
  }
}

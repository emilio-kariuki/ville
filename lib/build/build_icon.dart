import "package:flutter/material.dart";
import 'package:ville/build/build_container.dart';


class AppIcon extends StatelessWidget {
  const AppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildContainer(
      child: GestureDetector(
        child: Image.asset("name"),
      ),
    );
  }
}
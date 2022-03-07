import 'package:flutter/material.dart';
import 'package:ville/build/build_icon_container.dart';


class IconBuild extends StatelessWidget {
  final String iconUrl;
  const IconBuild({Key? key, required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconContainer(
      child: Image.asset(iconUrl,color: Color.fromARGB(255, 5, 5, 5)),
    );
  }
}
import 'package:flutter/material.dart';

class BuildRound extends StatelessWidget {
  final Widget child;
  const BuildRound({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.07,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.all(5),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 84, 29, 94),
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(100),
        ),
        child: child,
      ),
    );
  }
}

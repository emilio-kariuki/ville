import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final Widget child;

  const BuildContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 15,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 34, 63, 35),
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}

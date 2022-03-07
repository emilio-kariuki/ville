import "package:flutter/material.dart";

class IconContainer extends StatelessWidget {
  final Widget child;
  const IconContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}

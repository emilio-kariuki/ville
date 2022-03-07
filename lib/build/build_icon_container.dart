import "package:flutter/material.dart";

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width:60,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,

      ),
      
    );
  }
}
import "package:flutter/material.dart";

class ListBuilder1 extends StatelessWidget {
  final String imageUrl;
  const ListBuilder1({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                )
              )
            
             )
          ]
      )
    );
  }
}

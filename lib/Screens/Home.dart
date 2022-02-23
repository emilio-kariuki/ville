// ignore_for_file: prefer_const_constructors, prefer_collection_literals

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ville/Screens/accounts.dart';
import 'package:ville/Screens/items.dart';
import 'package:ville/Screens/map.dart';
import 'package:ville/Screens/notifications.dart';
import 'package:ville/Screens/post.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;
  final items = [
    Icon(Icons.map, size: 30),
    Icon(Icons.layers, size: 30),
    Icon(Icons.add, size: 30),
    Icon(Icons.notifications, size: 30),
    Icon(Icons.person, size: 30),
  ];
  final screen = [
    Mapp(),
    Items(),
    Post(),
    Notifications(),
    Accounts()
    
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 245, 96, 10),
      body: Center(
        child: PageView(
          controller: controller,
          onPageChanged: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          children: [
            Mapp(),
            Items(),
            Post(),
            Notifications(),
            Accounts()
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.transparent,
        index: index,
        height: 50,
        items: items,
        onTap: (newIndex) {
          setState(() {
            controller.animateToPage(newIndex,
                duration: Duration(microseconds: 500),
                curve: Curves.ease);
          });
        },
      ),
    );
  }
}

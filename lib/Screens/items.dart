// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    final title = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
      bottom: TabBar(
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Tab(icon: Icon(Icons.flight,color: Colors.black)),
          Tab(icon: Icon(Icons.directions_transit,color: Colors.black)),
          Tab(icon: Icon(Icons.directions_car,color: Colors.black)),
        ],
      ),
      title: Text('Tabs Demo'),
    ),
          body: SafeArea(
            child: ColorfulSafeArea(
                overflowRules: const OverflowRules.all(true),
                child:TabBarView(
                    children: [
                      Icon(Icons.flight, size: 350),
                      Icon(Icons.directions_transit, size: 350),
                      Icon(Icons.directions_car, size: 350),
                    ],
                  ), 
                ),
          )),
    );
  }
}

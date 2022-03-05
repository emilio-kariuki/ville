// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:ville/build/type_indicator.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final title = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: Size(size.width,90),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 18, 20, 29),),
                // isScrollable: true,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                Tab(icon: Icon(Icons.flight),),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_car)),
                  
                ],
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top:30),
              child: Container(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        // maxLength: 15,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            // icon: Icon(Icons.person,size:30,color: Colors.black),
                            filled: true,
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 117, 117, 117),
                                fontWeight: FontWeight.w500),
                            focusColor: Colors.red,
                            hintText: "Search for plastics,wastes...",
                            // suffixText: "10",
                            // prefixIcon: Icon(Icons.mail,color: Colors.blueGrey[900]),
                            fillColor: Color.fromARGB(255, 255, 255, 255)),
                        controller: title,
                      ),
                    ),
                    Icon(Icons.refresh, size: 35),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: ColorfulSafeArea(
              overflowRules: const OverflowRules.all(true),
              child: TabBarView(
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

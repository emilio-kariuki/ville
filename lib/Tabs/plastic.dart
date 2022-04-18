// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ville/Stream/data_stream.dart';
import 'package:ville/build/build_diagrams_items.dart';
import '../Accounts/overview.dart';
import '../firebase.dart/post_model.dart';

class Plastic extends StatefulWidget {
  const Plastic({Key? key}) : super(key: key);

  @override
  State<Plastic> createState() => _PlasticState();
}

class _PlasticState extends State<Plastic> {
  final _database = FirebaseDatabase.instance.ref();
  // void readData(){
  //   _database.once().then((DataSnapshot snapshot) async {
  //     print('Data : ${snapshot.value}');
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        overflowRules: OverflowRules.all(true),
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DisplayItems(
                func: () {},
                category: "plastics",
                imageUrl: 'assets/imagesd/p2.jpg',
                location: 'Chuka University,Chuka',
                distance: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

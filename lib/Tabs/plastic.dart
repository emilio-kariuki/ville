// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
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
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.white));
            }

            final data = snapshot.requireData;
            print(data.docs);

            return ListView.builder(
              itemCount: data.size,
              itemBuilder: (context, index) {
                return DisplayItems(
                  func: () {},
                  category: "${data.docs[index]['type']}",
                  imageUrl: '${data.docs[index]['url']}',
                  location: '${data.docs[index]['location']}',
                  distance: 500,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

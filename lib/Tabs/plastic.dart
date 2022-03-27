// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:ville/Accounts/overview.dart';
import 'package:ville/Stream/data_stream.dart';
import 'package:ville/build/build_diagrams_items.dart';
import 'package:ville/collect/collect.dart';

import '../firebase.dart/post_model.dart';

class Plastic extends StatefulWidget {
  const Plastic({Key? key}) : super(key: key);

  @override
  State<Plastic> createState() => _PlasticState();
}

class _PlasticState extends State<Plastic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        overflowRules: OverflowRules.all(true),
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              StreamBuilder(
                  stream: DataStream().getPostStream(),
                  builder: (context, snapshot) {
                    final datalist = <DisplayItems>[];
                    if (snapshot.hasData) {
                      final myOrders = snapshot.data as List<PostModel>;
                      datalist.addAll(myOrders.map((order) => DisplayItems(
                            func: () {},
                            distance: 200,
                            imageUrl: order.image,
                            category: order.title,
                            location: order.location,
                          )));
                    }
                    return const CircularProgressIndicator();
                  }
                ),
              // DisplayItems(
              //   func: () {
              //     setState(() {
              //       Navigator.of(context).push(
              //           MaterialPageRoute(builder: (context) => Overview()));
              //     });
              //   },
              //   category: "plastics",
              //   imageUrl: 'assets/images/p2.jpg',
              //   location: 'Chuka University,Chuka',
              //   distance: 500,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p3.jpg',
              //   location: 'Kisii University,Kisii',
              //   distance: 240,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p4.jpg',
              //   location: 'Mt Kenya University,thika',
              //   distance: 60,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p5.jpg',
              //   location: 'University of Nairobi,Nairobi',
              //   distance: 2000,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p3.jpg',
              //   location: 'Multi Media University,Juja',
              //   distance: 120,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p2.jpg',
              //   location: 'Kiriri University,Nakuru',
              //   distance: 670,
              // ),
              // DisplayItems(
              //   func: () {},
              //   category: "plastics",
              //   imageUrl: 'assets/images/p1.jpg',
              //   location: 'Kabarak University,Gilgil',
              //   distance: 90,
              //),
            ],
          ),
        ),
      ),
    );
  }
}

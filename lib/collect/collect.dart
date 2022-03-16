import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ville/Tabs/metal.dart';
import 'package:ville/Tabs/plastic.dart';
import 'package:ville/collect/location.dart';
import 'package:ville/constants/constants.dart';

class Collect extends StatefulWidget {
  Collect({Key? key}) : super(key: key);

  @override
  State<Collect> createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  GoogleMapController? newGoogleMapController;
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child:Column(
            children: [
              Container(
                height: size.height * 0.37,
                width: size.width,
                child: Column(
                  children: [
                     Container(
            height: size.height * 0.37,
            width: size.width,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/p3.jpg'),
                  fit: BoxFit.cover,
                ))),
                  ],
                )
              ),
             Container(
               padding: const EdgeInsets.all(10),
               child: Column(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Plastic",
                                 style: GoogleFonts.redressed(
                                     fontSize: 30,
                                     color: Color.fromARGB(255, 7, 6, 12),
                                     fontWeight: FontWeight.w600)),
                           SizedBox(height: size.height * 0.006),
                           Text("Dedan Kimathi University",
                                 style: GoogleFonts.roboto(
                                     fontSize: 30,
                                     color: kGreen,
                                     fontWeight: FontWeight.w500)),
                           Text("200 km",
                                 style: GoogleFonts.roboto(
                                     fontSize: 15,
                                     color: Colors.grey,
                                     fontWeight: FontWeight.w500)),
                          SizedBox(height:15),
                           
                         ]
                       ),
                       Container(
                         //  color: Colors.grey,
                         child: Center(
                             child: DefaultTabController(
                               length:2,
                               child: Scaffold(
                                   appBar: PreferredSize(
                                     preferredSize: Size(size.width,50),
                                     child: AppBar(
                                       elevation: 0,
                                        backgroundColor: Colors.white,
                                        bottom: TabBar(
                                            // indicatorPadding: EdgeInsets.only(left:50,right:10),
                                            indicatorWeight: 4,
                                            indicatorSize: TabBarIndicatorSize.tab,
                                            indicatorColor: kGreen,
                                            // isScrollable: true,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            tabs: [
                                            Tab(child:Text("Description",style: GoogleFonts.roboto(fontSize:18,color: kGreen,fontWeight:FontWeight.w500))),
                                            Tab(child:Text("Location Details",style: GoogleFonts.roboto(fontSize:18,color: kGreen,fontWeight:FontWeight.w500))),
                                            ],
                                            ),
                                            
                                          ),
                                   ),
                              body: TabBarView(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Plastic(),
                                      // Icon(Icons.directions_boat,color: kGreen)
                                      MapCollect(),
                                    ],
                                  ),
                            ),
                          )),
                         height: size.height * 0.21,
                         width: size.width,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.white),
                         // image: image
                       ),
                     ],
                   ),
             ),
                
            ],
          ) ,
          
          ));
  }
}

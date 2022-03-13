import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:ville/build/Icon_build.dart';
import 'package:ville/constants/constants.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                  height: size.height * 0.4,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: kGreen,
                  )),
            )

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // IconBuild(iconUrl: "assets/images/pin.png"),
            //     Text("EcoVille",
            //         style: GoogleFonts.roboto(
            //             fontSize: 25,
            //             color: Color.fromARGB(255, 17, 17, 17),
            //             fontWeight: FontWeight.w500)),

            //   ],
            // ),

            // SizedBox(
            //   height: size.height * 0.06,
            //   width: size.width * 0.7,
            //   child: ElevatedButton(
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(
            //           Color.fromARGB(255, 14, 14, 20)),
            //       // MaterialStateProperty<Color?>?
            //       shape: MaterialStateProperty.all<
            //           RoundedRectangleBorder>(
            //         RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //           side: BorderSide(
            //             color: Color.fromARGB(255, 14, 14, 20),
            //             width: 2.0,
            //           ),
            //         ),
            //       ),
            //     ),
            //     child: Text('Submit',
            //         style: GoogleFonts.roboto(fontSize: 20)),
            //     onPressed: (){
            //     },
            //   ),
            // ),
            // SizedBox(height:5),
            // SizedBox(
            //   height: size.height * 0.06,
            //   width: size.width * 0.7,
            //   child: ElevatedButton(
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(
            //           Color.fromARGB(255, 14, 14, 20)),
            //       // MaterialStateProperty<Color?>?
            //       shape: MaterialStateProperty.all<
            //           RoundedRectangleBorder>(
            //         RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //           side: BorderSide(
            //             color: Color.fromARGB(255, 14, 14, 20),
            //             width: 2.0,
            //           ),
            //         ),
            //       ),
            //     ),
            //     child: Text('Submit',
            //         style: GoogleFonts.roboto(fontSize: 20)),
            //     onPressed: (){
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
   
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

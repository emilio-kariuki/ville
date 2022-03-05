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
    return Scaffold(
        body: SafeArea(
          child: ColorfulSafeArea(
              overflowRules: const OverflowRules.all(true),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex:1,
                          child: TextFormField(
                            maxLength: 15,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                // icon: Icon(Icons.person,size:30,color: Colors.black),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                focusColor: Colors.red,
                                hintText: "Summary of the waste",
                                // suffixText: "10",
                                // prefixIcon: Icon(Icons.mail,color: Colors.blueGrey[900]),
                                fillColor: Colors.grey[200]),
                            controller: title,
                          ),
                        ),
                        Icon(Icons.refresh,size: 40)
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}

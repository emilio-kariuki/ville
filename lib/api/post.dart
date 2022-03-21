import 'dart:convert';

import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class Api {
  postData() async {
    var response = await http.post(Uri.parse(
        "https://greendemo-333401-default-rtdb.firebaseio.com/post.json"),body: json.encode(
          {
          'location': "Dedan Kimathi University",
          'waste_type': "Plastic",
          'image': "plastic image",
          'description': "fresh plastic",
          'name': "Plastic",
    
        }
        ));
        

  }
}

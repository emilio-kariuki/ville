import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class Api {
  postData() async {
    var response = await http.post(Uri.parse(
        "https://greendemo-333401-default-rtdb.firebaseio.com/post.json"));
        
  }
}

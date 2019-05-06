import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  List data;

  Future<String> getData() async {
    // var response = await http.get(
      // Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      // new Uri.http("192.168.20.65:3000","/issue/2"),
    //   headers: {
    //     "Accept": "application/json"
    //   },
      
    // );

    var response = await http.post(
      // Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      new Uri.http("192.168.20.65:3000","/project"),
      headers: {
        "Accept": "application/json"
      },
      body: {"user_id": "2"}
      
    );

    // print(response.body);
    data = jsonDecode(response.body);
    print(data);
    
    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: getData,
        ),
      ),
    );
  }
}
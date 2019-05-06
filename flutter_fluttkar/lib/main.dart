import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => print("Splash Done!"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "FlutKar",
                        style: new TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Text( "Only Store \n For Everyone",
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)

                  ],
                ) ,
              )
            ],
          )
        ],
      ),
    );
  }
}

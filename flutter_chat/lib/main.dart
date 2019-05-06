import 'package:flutter/material.dart';
import 'package:flutter_chat/whatsapp_home.dart';

void main() => runApp(MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterChat",

      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff250366),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}

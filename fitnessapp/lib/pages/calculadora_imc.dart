import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora"),
      ),
      body: new Center(
         child: new Text("Aqui ira la calculadora"),
      ),
    );
  }
}
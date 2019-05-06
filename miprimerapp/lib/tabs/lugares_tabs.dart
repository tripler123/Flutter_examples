import 'package:flutter/material.dart';

class LugaresTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          //Agregamos una imagen
          new Container(
            margin: const EdgeInsets.all(10.0), //margin a todos los lados
            width: 350.0,
            height: 350.0,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/img/img2.png"),
              fit: BoxFit.cover
              )
            ),
          ),
        ],
      ),
    );
  }
}
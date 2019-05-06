import 'package:flutter/material.dart';

class AcercadeTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:  new Text('Nosotros...'),
      ),
      body: new Center(
        child: new Text('Estamos aprendiendo Flutter'),
      ),
    );
  }
}
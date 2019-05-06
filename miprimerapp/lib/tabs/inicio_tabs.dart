import 'package:flutter/material.dart';

class InicioTabs extends StatelessWidget {
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
              image: new DecorationImage(image: new AssetImage("assets/img/img1.jpg"),
              fit: BoxFit.cover
              )
            ),
          ),
          // Agregamos un boton
          new Container(
            margin: EdgeInsets.only(top: 390.0, left: 25.0),
            child: new RaisedButton(
              padding: const EdgeInsets.only(top: 20.0, left: 100.0, right: 100.0, bottom: 20.0),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Hola Mundo')
                  )
                );
              },
              child: new Text('Precione Aqui'),
            ),
          )
        ],
      ),
    );
  }
}
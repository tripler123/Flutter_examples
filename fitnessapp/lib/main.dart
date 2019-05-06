import 'package:fitnessapp/pages/calculadora_imc.dart';
import 'package:fitnessapp/pages/nosotros.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'App Fitness',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Creamos un arreglo de datos imagenes y nombre de ejecicio
  List<Container> listamos = List();

  var arreglox = [
    {
      "nombre": "Gluteos",
      "imagen": "img1.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img2.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img3.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img4.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img5.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img6.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img7.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    },
    {
      "nombre": "Gluteos",
      "imagen": "img8.jpg",
      "ejercicio": "Trabajo con mancuerdas"
    }
  ];

  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];

      listamos.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: arregloxyz['nombre'],
                child: new Material(
                  child: new InkWell(
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new Detalle(
                                nombre: arregloxyz['nombre'],
                                image: imagen,
                                deporte: arregloxyz['ejercicio']))),
                    child: new Image.asset(
                      "img/$imagen",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Text(
                arregloxyz['nombre'],
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _listado();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Fitness 2019'),
        backgroundColor: Colors.orange,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Renzo Rios'),
              accountEmail: new Text('Flesan App'),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('img/img1.jpg'),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text('Calculator IMC'),
              trailing: new Icon(Icons.fitness_center),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Calculadora(),
                  )),
            ),
            new ListTile(
              title: new Text('Calculator IMC'),
              trailing: new Icon(Icons.fitness_center),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Nosotros(),
                  )),
            ),
          ],
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 0.1,
        childAspectRatio: 0.700,
        children: listamos,
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  Detalle({this.nombre, this.image, this.deporte});
  final String nombre;
  final String image;
  final String deporte;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: Hero(
                tag: nombre,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$image",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new IniciarNombre(nombre: nombre),
          new IniciarIcon(),
          new Informacion(
            deporte: deporte,
          )
        ],
      ),
    );
  }
}

class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre});
  final String nombre;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nombre,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "$nombre\@gmail.com",
                  style: new TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(Icons.star, size: 30.0, color: Colors.red),
              new Text("12", style: new TextStyle(fontSize: 18.0))
            ],
          )
        ],
      ),
    );
  }
}

class IniciarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new IconTec(icon: Icons.call, tec: "Llamar"),
          new IconTec(icon: Icons.message, tec: "Mensaje"),
          new IconTec(icon: Icons.photo, tec: "Foto"),
        ],
      ),
    );
  }
}

class IconTec extends StatelessWidget {
  IconTec({this.icon, this.tec});

  final IconData icon;
  final String tec;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            tec,
            style: new TextStyle(fontSize: 12.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}


class Informacion extends StatelessWidget {
  Informacion({this.deporte});

  final String deporte;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text( 
            deporte,
            style: new TextStyle(fontSize: 16.0, color: Colors.blue)
          ),
        ),
      ),
    );
  }
}


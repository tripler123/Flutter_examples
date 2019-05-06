import 'package:flutter/material.dart';
import 'package:miprimerapp/tabs/acercade_tabs.dart';
import 'package:miprimerapp/tabs/inicio_tabs.dart';
import 'package:miprimerapp/tabs/lugares_tabs.dart';
import 'package:miprimerapp/tabs/registro_tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabController = new DefaultTabController(
      length: 5, //Numero de iconos o tabs
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Navegacion por Tabs'),
          bottom: new TabBar(
            indicatorColor: Colors.red,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),
                text: "Inicio",
              ),
              new Tab(
                icon: new Icon(Icons.contacts),
                text: "Registro",
              ),
              new Tab(
                icon: new Icon(Icons.place),
                text: "Lugares",
              ),
              new Tab(
                icon: new Icon(Icons.help),
                text: "Ayuda",
              ),
              new Tab(
                icon: new Icon(Icons.home),
                text: "Acerca de",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new InicioTabs(),
            new RegistroTabs(),
            new LugaresTabs(),
            new AcercadeTabs(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      title: 'Tabs with Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}

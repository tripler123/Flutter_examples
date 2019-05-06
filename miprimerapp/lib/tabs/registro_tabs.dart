import 'package:flutter/material.dart';

class RegistroTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Registro Cliente'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Nombre",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Telefono",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: new Text('Cumpleaños'),
            subtitle: const Text('Mayo 17 del 2019'),
          ),
          new ListTile(
            leading: const Icon(Icons.group),
            title: new Text('Grupo Flutter'),
            subtitle: const Text('Flutter....'),
          ),
        ],
      ),
    );
  }
}

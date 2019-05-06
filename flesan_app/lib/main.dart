import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Proyectos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Project>> _getProjects() async {
    var data = await http.post(new Uri.http("192.168.20.65:3000", "/project"),
        headers: {"Accept": "application/json"}, body: {"user_id": "1"});

    var jsonData = jsonDecode(data.body);

    List<Project> projects = [];

    for (var p in jsonData) {
      Project project = Project(
          p["id"], p["projectname"], p["project_image"], p["created_at"]);
      projects.add(project);
    }

    print(projects.length);

    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: _getProjects(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Loading...."),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        snapshot.data[index].project_image,
                      ),
                    ),
                    title: Text(snapshot.data[index].projectname),
                    subtitle: Text(snapshot.data[index].created_at),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  DetailProject(snapshot.data[index])));
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class DetailProject extends StatelessWidget {
  final Project project;
  DetailProject(this.project);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.projectname),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

class Project {
  final int index;
  final String projectname;
  final String project_image;
  final String created_at;

  Project(this.index, this.projectname, this.project_image, this.created_at);
}

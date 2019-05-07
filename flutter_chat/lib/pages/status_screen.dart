import 'package:flutter/material.dart';
import 'package:flutter_chat/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(status[0].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    status[0].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    status[0].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Text(data),),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10.0),
            child: new Text(
              "Recientes",
              style: new TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff075e54)),
            ),
          ),
          Divider(),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(status[1].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    status[1].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    status[1].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              )),
          Divider(),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(status[2].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    status[2].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    status[2].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

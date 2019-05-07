import 'package:flutter/material.dart';
import 'pages/camera_alt.dart';
import 'pages/chat_list.dart';
import 'pages/calls.dart';
import 'pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Chat"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(text: "CHATS"),
            new Tab(text: "ESTADOS"),
            new Tab(text: "LLAMADAS"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Status(),
          new Calls()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xff250366),
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}

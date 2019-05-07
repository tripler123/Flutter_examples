import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;

  const ChatScreen({Key key, this.name}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(widget.name)
    );
  }
}
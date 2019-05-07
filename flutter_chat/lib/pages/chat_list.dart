import 'package:flutter/material.dart';
import 'package:flutter_chat/models/chat_model.dart';
import 'package:flutter_chat/pages/chat_screen.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(messageData[index].imageUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        messageData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        messageData[index].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 8.0),
                    child: new Text(messageData[index].message),
                  ),
                  onTap: () {
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new ChatScreen(name: messageData[index].name,));
                        Navigator.of(context).push(route);
                  })
            ],
          ),
    );
  }
}

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  bool _isTyped = false;

  void _handledSubmit(String text) {
    _textController.clear();
    setState(() {
      _isTyped = false;
    });
    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(
          duration: new Duration(microseconds: 700), vsync: this),
      name: widget.name,
    );

    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
    print(text);
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  controller: _textController,
                  onChanged: (String text) {
                    setState(() {
                      _isTyped = text.length > 0;
                    });
                  },
                  decoration: new InputDecoration.collapsed(hintText: "Enviar Mensaje"),
                ),
              ),
              new Container(
                child: new IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _isTyped
                      ? () => _handledSubmit(_textController.text)
                      : null,
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.name),
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            new Flexible(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            new Divider(
              height: 1.0,
            ),
            new Container(
              child: _buildTextComposer(),
            )
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String name;
  final AnimationController animationController;
  final String text;

  const ChatMessage({Key key, this.name, this.animationController, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: new CircleAvatar(
                child: new Text(name[0]),
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    name,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

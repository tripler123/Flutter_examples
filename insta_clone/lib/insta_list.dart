import 'package:flutter/material.dart';
import 'package:insta_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.165,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://elreporterodetamaulipas.com/wp-content/uploads/2018/10/iron-1.jpg_793492074-1.jpg'))),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text("Iron Man",
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://www.ecestaticos.com/imagestatic/clipping/cdb/fc2/cdbfc2ba5bcab684850932a1b5d71330/la-nasa-escoge-una-foto-espanola-como-su-imagen-del-dia.jpg?mtime=1432586964",
                    fit: BoxFit.cover
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(FontAwesomeIcons.heart),
                          new SizedBox(width: 16.0,),
                          new Icon(FontAwesomeIcons.comment),
                          new SizedBox(width: 16.0,),
                          new Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Like by Renzo Rios",
                  style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://elreporterodetamaulipas.com/wp-content/uploads/2018/10/iron-1.jpg_793492074-1.jpg')
                          )
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(child: new TextField(
                        decoration: new InputDecoration(
                          border:  InputBorder.none,
                          hintText: "Add Comment...",
                        ),
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Text("1 Day Ago", style: new TextStyle(color: Colors.grey),),
                )
              ],
            ),
    );
  }
}

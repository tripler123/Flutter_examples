import 'package:flutter/material.dart';
import 'dart:math';
import 'package:last_news_http/network.dart';
import 'package:webfeed/webfeed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(
      //   title: 'Lastet News',
      // ),
      // routes: {
      //   '/': (BuildContext context) => MyHomePage(
      //         title: 'Lastest News',
      //       ),
      //   '/show': (BuildContext context) => ShowPage()
      // },
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => MyHomePage(
                  title: 'Lastest News',
                );
            break;
          case '/show':
            var args = settings.arguments;
            if (args is RssItem) {
              builder = (BuildContext context) =>
                  ShowPage(title: args.title, content: args.content.value);
              break;
            }
        }

        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class ShowPage extends StatefulWidget {
  final String title;
  final String content;

  const ShowPage({Key key, this.title, this.content}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.5),
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: InkWell(
              child: Icon(
                Icons.share,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;
  double backgroundHeight = 180.0;
  Future<RssFeed> future;

  @override
  void initState() {
    super.initState();
    future = getNews();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.5),
        elevation: 0.0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: InkWell(
              child: Icon(
                Icons.share,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<RssFeed> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return Stack(
                children: <Widget>[
                  // Container(
                  // width: double.infinity,
                  // height: 120.0,
                  // color: Colors.grey.withOpacity(0.5),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: snapshot.data.items.length + 2,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 16.0),
                            child: Text(snapshot.data.description),
                          );
                        }
                        if (index == 1) {
                          return _bigItem();
                        }
                        return _item(snapshot.data.items[index - 2]);
                      },
                    ),
                  ),
                ],
              );
          }
          return null;
        });
  }

  Widget _bigItem() {
    var screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: AssetImage('assets/images/img1.jpg'),
                fit: BoxFit.fill,
              )),
        ),
        Container(
          height: 64.0,
          width: 64.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            color: Colors.white,
          ),
          child: Icon(
            Icons.play_arrow,
            size: 50.0,
          ),
        )
      ],
    );
  }

  Widget _item(RssItem item) {
    var mediaUrl = _extractImage(item.content.value);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/show', arguments: item);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 42.0,
                          width: 42.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.0),
                              color: Colors.blueAccent),
                          child: Center(
                            child: Text(item.categories.first.value[0],
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          item.categories.first.value,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      item.dc.creator,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              mediaUrl != null
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(mediaUrl),
                            fit: BoxFit.cover,
                          )),
                      width: 120,
                      height: 120,
                    )
                  : SizedBox(width: 0.0)
            ],
          ),
        ),
      ),
    );
  }

  String _extractImage(String content) {
    RegExp regexp = RegExp('<img[^>]+src="([^">]+)"');

    Iterable<Match> matches = regexp.allMatches(content);

    if (matches.length > 0) {
      return matches.first.group(1);
    }
    return null;
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
           _bottomNavIndex = index; 
          });
        },
        items: [
          new BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.local_offer)
          ),
          new BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
            title: new Text(""),
            icon: new Icon(Icons.notifications)
          )
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style: new TextStyle(fontSize: 30.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text("Motor",
                                style: new TextStyle(
                                    fontSize: 15.0, color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 2.5, right: 2.5),
                              child: new Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF2BD093),
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.local_offer,
                                          color: Colors.white),
                                    ),
                                    new Text("Classified",
                                        style:
                                            new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.5, right: 2.5),
                              child: new Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFFC7B4D),
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.beenhere,
                                          color: Colors.white),
                                    ),
                                    new Text("Service",
                                        style:
                                            new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 2.5, left: 2.5),
                              child: new Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF53CEDB),
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.account_balance,
                                          color: Colors.white),
                                    ),
                                    new Text("Properties",
                                        style:
                                            new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.5, left: 2.5),
                              child: new Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFF1B069),
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.art_track,
                                          color: Colors.white),
                                    ),
                                    new Text("Jobs",
                                        style:
                                            new TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Popular Trending",
                        style: new TextStyle(fontSize: 15.0)),
                  ),
                  Expanded(
                      child: new Text("View All",
                          style: new TextStyle(
                              fontSize: 15.0, color: Color(0xFF2BD093)),
                          textAlign: TextAlign.end))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://o.aolcdn.com/images/dims?quality=85&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2019-03%2Fe57da1e0-3cd4-11e9-bdf6-c140e8ef7073&client=amp-blogside-v2&signature=ae13ec0713227c71d340787710a05e08e5869f0c'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Play Station", style: new TextStyle(fontSize: 12.0),  textAlign: TextAlign.center)
                      ],
                    ),
                  )),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://elbandidodoblementearmado.com/wp-content/uploads/2019/02/PlayStation-4-VR-llega-este-verano.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Lentes VR", style: new TextStyle(fontSize: 12.0),  textAlign: TextAlign.center)
                      ],
                    ),
                  )),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://cdn.pressstart.com.au/wp-content/uploads/2018/02/PlayStation-Headset.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Audifonos Especiales Beats" , style: new TextStyle(fontSize: 12.0), textAlign: TextAlign.center,)
                      ],
                    ),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("Popular Trending",
                        style: new TextStyle(fontSize: 15.0)),
                  ),
                  Expanded(
                      child: new Text("View All",
                          style: new TextStyle(
                              fontSize: 15.0, color: Color(0xFF2BD093)),
                          textAlign: TextAlign.end))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://o.aolcdn.com/images/dims?quality=85&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2019-03%2Fe57da1e0-3cd4-11e9-bdf6-c140e8ef7073&client=amp-blogside-v2&signature=ae13ec0713227c71d340787710a05e08e5869f0c'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Play Station", style: new TextStyle(fontSize: 12.0),  textAlign: TextAlign.center)
                      ],
                    ),
                  )),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://elbandidodoblementearmado.com/wp-content/uploads/2019/02/PlayStation-4-VR-llega-este-verano.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Lentes VR", style: new TextStyle(fontSize: 12.0),  textAlign: TextAlign.center)
                      ],
                    ),
                  )),
                  new SizedBox(
                    width: 5.0,
                  ),
                  new Expanded(
                      child: Container(
                    height: 140.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: new NetworkImage(
                                      'https://cdn.pressstart.com.au/wp-content/uploads/2018/02/PlayStation-Headset.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        new Text("Audifonos Especiales Beats" , style: new TextStyle(fontSize: 12.0), textAlign: TextAlign.center,)
                      ],
                    ),
                  ))
                ],
              )
            
            ],
          )),
        )
      ],
    );
  }
}

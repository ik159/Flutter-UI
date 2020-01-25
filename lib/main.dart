import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Overview"),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/lo.png',
                    width: 140.0,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Burj Khalifa",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontFamily: 'Girassol',
                            ),
                          ),
                          Icon(
                            Icons.volume_up,
                            size: 35.0,
                            color: Colors.black,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                          ),
                          Text(
                            "(2947)",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      ),
                      Row(
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.white,
                            elevation: 15.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.black),
                            ),
                            highlightElevation: 20.0,
                            highlightColor: Colors.black,
                            onPressed: () {
                              launch("tel:+916281952405");
                              print("hello1");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.call,
                                  size: 35.0,
                                  color: Colors.blue,
                                ),
                                Container(
                                  width: 5.0,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40.0,
                          ),
                          RaisedButton(
                            color: Colors.white,
                            elevation: 15.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.black),
                            ),
                            highlightElevation: 20.0,
                            highlightColor: Colors.black,
                            onPressed: () {
                              launch("mailto:vats9549@gmail.com");
                              print("hello2");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  color: Colors.blue,
                                  size: 35.0,
                                ),
                                Container(
                                  width: 5.0,
                                ),
                                Text(
                                  "Mail",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        highlightElevation: 20.0,
                        highlightColor: Colors.black,
                        onPressed: () {
                          launch(
                              "https://www.google.com/maps/search/?api=1&query=Amer Fort Jaipur");
                          print("hello3");
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.directions,
                              color: Colors.blue,
                              size: 35.0,
                            ),
                            Container(
                              width: 5.0,
                            ),
                            Text(
                              "Directions",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          Container(
                            width: 15.0,
                          ),
                          Text(
                            "9 am to 6 pm",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Libre Baskerville',
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )),
          Container(
            child: Stepper(
              controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                return Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: onStepContinue,
                      child: null,
                    ),
                    FlatButton(
                      onPressed: onStepCancel,
                      child: null,
                    ),
                  ],
                );
              },
              steps: [
                Step(
                    title: Text(
                      "Inaguarated in 2010.",
                      style: TextStyle(
                        color: Colors.teal[900],
                        backgroundColor: Colors.grey[200],
                        fontSize: 25.0,
                      ),
                    ),
                    content: Text(
                      'Height : 820 m , Floors : 163 , Top Floor : 584 m (1918 ft)',
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.teal[400],
                        fontSize: 18.0,
                      ),
                    )),
                Step(
                  title: Text(
                    "Tallest building in the world.",
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.teal[900],
                      backgroundColor: Colors.grey[200],
                      fontSize: 22.0,
                    ),
                  ),
                  content: Text(''),
                ),
                Step(
                    title: Text(
                      "Sky scrapper in Dubai,UAE.",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.teal[900],
                          backgroundColor: Colors.grey[200]),
                    ),
                    content: Text('')),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 250.0,
            child: RaisedButton(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black)),
              color: Colors.yellow,
              onPressed: () {
                launch(
                    "https://tickets.atthetop.ae/atthetop/en-us/?utm_source=google&utm_campaign=local_search&utm_medium=organic");
              },
              child: Text(
                'Book Tickets',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Pacifico'),
              ),
            ),
          ),)
        ],
      ),
    );
  }
}

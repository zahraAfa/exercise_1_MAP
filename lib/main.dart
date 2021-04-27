import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 1 MAP',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'My Icon'),
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
  double _size = 300;
  int _red = 0;
  int _green = 0;
  int _blue = 255;

  bool _resize = false;
  bool _recolor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: _resize
              ? [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 12, 0, 12),
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 15.0,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_size > 50) {
                            _size -= 50;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 12, 0, 12),
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextButton(
                      child: Text(
                        "S",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          _size = 100;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 12, 0, 12),
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextButton(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          _size = 300;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 12, 0, 12),
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextButton(
                      child: Text(
                        "L",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          _size = 500;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 12, 10, 12),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 15.0,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_size < 480) {
                            _size += 50;
                          }
                        });
                      },
                    ),
                  ),
                ]
              : [],
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CheckboxListTile(
              title: Text('Allow resize?'),
              value: _resize,
              onChanged: (bool value) {
                setState(() {
                  _resize = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Allow chang primer color?'),
              value: _recolor,
              onChanged: (bool value) {
                setState(() {
                  _recolor = value;
                });
              },
            )
          ],
        )),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  child: Icon(
                    Icons.alarm,
                    size: _size,
                    color: Color.fromRGBO(_red, _green, _blue, 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              activeColor: Colors.brown,
                              value: _red.toDouble(),
                              min: 0.0,
                              max: 255.0,
                              onChanged: (value) {
                                setState(() {
                                  _red = value.toInt();
                                });
                              },
                            ),
                          ),
                          _recolor
                              ? FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      _red = 255;
                                      _green = 0;
                                      _blue = 0;
                                    });
                                  },
                                  child: Text("$_red"),
                                )
                              : Text("$_red"),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              activeColor: Colors.brown,
                              value: _green.toDouble(),
                              min: 0.0,
                              max: 255.0,
                              onChanged: (value) {
                                setState(() {
                                  _green = value.toInt();
                                });
                              },
                            ),
                          ),
                          _recolor
                              ? FloatingActionButton(
                                  backgroundColor: Colors.green,
                                  onPressed: () {
                                    setState(() {
                                      _red = 0;
                                      _green = 255;
                                      _blue = 0;
                                    });
                                  },
                                  child: Text("$_green"),
                                )
                              : Text("$_green"),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              activeColor: Colors.brown,
                              value: _blue.toDouble(),
                              min: 0.0,
                              max: 255.0,
                              onChanged: (value) {
                                setState(() {
                                  _blue = value.toInt();
                                });
                              },
                            ),
                          ),
                          _recolor
                              ? FloatingActionButton(
                                  backgroundColor: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      _red = 0;
                                      _green = 0;
                                      _blue = 255;
                                    });
                                  },
                                  child: Text("$_blue"),
                                )
                              : Text("$_blue"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        primarySwatch: Colors.blue,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

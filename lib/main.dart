import 'package:flutter/material.dart';

import 'box.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const TEXT_STYLE = TextStyle(
      letterSpacing: 5,
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: Colors.white);

  Box myBox = Box();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Totally Harmless App ",
            style: TEXT_STYLE,
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: myBox,
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(
                        'Push Me',
                        style: TEXT_STYLE,
                      ),
                      onPressed: () {
                        setState(() {
                          switch (count) {
                            case 0:
                              count++;
                              break;
                            case 1:
                              myBox = Box2();
                              count++;
                              break;
                            case 2:
                              myBox = Box3();
                              break;
                          }
                        });
                        print('Ow $count');
                      },
                    ),
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

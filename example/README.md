### Toggle Button.

```dart
import 'package:flutter/material.dart';

import 'package:toggle_button/toggle_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Toggle Button example '),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: ToggleButton(
                    borderRadius: 40.0,
                    size: 15.0,
                    onChange: (sta) {
                      print(sta);
                    },
                    axis: ToggleButtonAlignment.horizontal,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: ToggleButton(
                    borderRadius: 0.0,
                    size: 15.0,
                    onChange: (sta) {
                      print(sta);
                    },
                    axis: ToggleButtonAlignment.horizontal,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: ToggleButton(
                    borderRadius: 0.0,
                    size: 15.0,
                    onChange: (sta) {
                      print(sta);
                    },
                    axis: ToggleButtonAlignment.verticle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: ToggleButton(
                    borderRadius: 0.0,
                    backgroundColor: Colors.indigo,
                    size: 30.0,
                    onChange: (status) {
                      print(status);
                    },
                    axis: ToggleButtonAlignment.horizontal,
                  ),
                )
              ],
            ),
          )),
    );
  }
}

```

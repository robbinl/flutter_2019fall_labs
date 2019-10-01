import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(onPressed: _PressedHandler, child: Text('hey man')),
        ),
      ],
    );
  }
}

_PressedHandler() {
  print('in here');
}

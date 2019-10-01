import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool _enabled = false;
  bool _start = false;
  var _onPressed;
  int _timesClicked = 0;
  String _msg = 'Button Disabled';

  @override
  Widget build(BuildContext context) {
    Object onPressed() {
      if (_enabled) {
        return () {
          setState(() {
            if (_start) {
              _timesClicked++;
              _msg = 'Clicked $_timesClicked yes man';
            } else {
              _timesClicked = 0;
              _msg = 'Click Here';
            }
            print('clicked $_timesClicked');
          });
        };
      } else {
        return null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Fun'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 8,
                textColor: Colors.red.shade100,
                color: Colors.redAccent,
                highlightColor: Colors.blue,
                splashColor: Colors.green.shade300,
                padding: EdgeInsets.all(20.0),
                onPressed: onPressed(),
                child: Text(_msg),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('disable/enable button'),
                  Switch(
                      value: _enabled,
                      onChanged: (bool value) {
                        setState(() {
                          _enabled = value;
                          if (_enabled) {
                            _msg = 'Clicked $_timesClicked';
                            print('_enabled is true');
                          } else {
                            _msg = 'Button Disabled';
                            print('_enabled is false');
                          }
                        });
                      }),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('reset/start button'),
                  Switch(
                      value: _start,
                      onChanged: (bool value) {
                        setState(() {
                          _start = value;
                          if (_start) {
                            _msg = 'Clicked $_timesClicked here man';
                            print('_start is true');
                          } else {
                            _timesClicked = 0;
                            _msg = 'Click Here';
                            print('_start is false');
                          }
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

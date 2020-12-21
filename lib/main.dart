import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('hello'),
          FlatButton(
            onPressed: () {
              print('click me again! What the h*ll');
            },
            child: Text('Click'),
            color: Colors.amber,
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(30),
            child: Text('inside container'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {
          print('Click!');
        },
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

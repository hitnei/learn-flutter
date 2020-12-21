import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: RaisedButton.icon(
          onPressed: () {
            print('press');
          },
          label: Text(
            'Whatever',
            style: TextStyle(
              color: Colors.white,
            )
          ),
          icon: Icon(
            Icons.ac_unit_rounded,
            color: Colors.white,
          ),
          color: Colors.blue,
        ),
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

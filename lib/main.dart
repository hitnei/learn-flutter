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
        child: Image(
          image: AssetImage('assets/space-02.jpg'),
        )
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

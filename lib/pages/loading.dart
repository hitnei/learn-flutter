import 'package:flutter/material.dart';
import 'package:myapp/sevices/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String loading = 'Loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'berlin.png', url: 'Europe/Berlin');
    await instance.getTime();
    setState(() {
      loading = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(loading),
      ),
    );
  }
}

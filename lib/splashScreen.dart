import 'dart:async';

import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromRGBO(168, 196, 208, 1), Colors.green[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Image.network(
            "https://flevix.com/wp-content/uploads/2019/12/Quarter-Circle-Loading-Image-1.gif"),
      ),
    );
  }
}

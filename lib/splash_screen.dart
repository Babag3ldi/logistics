import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:logistics/main.dart';

import 'flutter_map.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyWidget())));
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      backgroundColor: '17171f'.toColor(),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Height * 10,
            ),
            Image.asset(
              'assets/logo1.png',
              height: Height * 40,
              width: Width * 50,
            ),
            Text(
              "Logistics",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Philosopher',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: Height * 2,
            ),
            Container(
                width: Width * 80,
                child: Center(
                    child: Text(
                  "Maps",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ))),
            SizedBox(
              height: Height * 12,
            ),
            SpinKitChasingDots(
              color: Colors.indigo,
              size: 32,
            )
          ]),
    );
  }
}

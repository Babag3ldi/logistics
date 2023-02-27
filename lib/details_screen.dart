import 'package:flutter/material.dart';
import 'package:logistics/main.dart';

import 'model.dart';

class DetailsScreen extends StatelessWidget {
  final BasicModel basic;

  DetailsScreen(
    this.basic
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '1d2225'.toColor(),
        title: Text("Logistics"),
      ),
      body: ListView(children: [
        Image.asset(basic.image),
        Image.asset(basic.image2),
        Image.asset(basic.image3),
      ]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:logistics/main.dart';

import 'drawer.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '17171f'.toColor(),
      appBar: AppBar(
        backgroundColor: '1d2225'.toColor(),
        title: Text("Info"),
      ),
      drawer: Drawer1(),
      body: Center(child: Text('Programma barada', style: TextStyle(fontSize: 30, color: Colors.white),)),
    );
  }
}
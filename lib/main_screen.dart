import 'package:flutter/material.dart';
import 'package:logistics/main.dart';

import 'details_screen.dart';
import 'drawer.dart';
import 'model.dart';
import 'page2.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '17171f'.toColor(),
      drawer: Drawer1(),
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            ///Properties of app bar
            backgroundColor: '17171f'.toColor(),
            floating: false,
            pinned: true,
            expandedHeight: 300.0,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Image.asset('assets/trans.png'),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: basicList.length,
              (BuildContext context, int index) {
                BasicModel basic = basicList[index];
                return  InkWell(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(basic),
                      ),
                    );
                  },
                  child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Card(
                                color: '1d2225'.toColor(),
                                child: ListTile(
                                    title: Text(basic.title, style: TextStyle(color: Colors.white, fontSize: 20),),
                                    leading: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color.fromARGB(255, 81, 13, 207),
                                      child: Text("${index+1}")
                                    )),
                              ),
                            ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
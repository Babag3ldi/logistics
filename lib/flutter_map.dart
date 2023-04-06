import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:flutter_map/plugin_api.dart';
import 'package:logistics/drawer.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  MapController mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: LatLng(37.961449, 58.327929),
              zoom: 16.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
                // subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    height: 70,
                    width: 70,
                    point: LatLng(37.961449, 58.327929),
                    builder: (context) {
                      return Image.asset(
                        'assets/loc.png',
                      );
                    },
                  ),
                  Marker(
                    height: 60,
                    width: 60,
                    point: LatLng(37.951290, 58.335653),
                    builder: (context) {
                      return Image.asset(
                        'assets/truck.png',
                      );
                    },
                  )
                ],
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [
                      LatLng(37.961449, 58.327929),
                      LatLng(37.961716, 58.326678),
                      LatLng(37.957606, 58.322878),
                      LatLng(37.956006, 58.326878),
                      LatLng(37.953006, 58.333278),
                      LatLng(37.952596, 58.335118),
                      LatLng(37.951755, 58.335653),
                    ],
                    color: Colors.red,
                    strokeWidth: 10,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 35),
            child: ClipOval(
              child: Material(
                color: Colors.red.withOpacity(0.3), // Button color
                child: InkWell(
                  splashColor: Colors.red, // Splash color
                  onTap: () {
                    _key.currentState!.openDrawer();
                  },
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.menu,
                        size: 35,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
      key: _key,
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
}

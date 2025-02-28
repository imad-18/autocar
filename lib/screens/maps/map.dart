import 'package:autocar/enum/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../shared/custom_bottom_navBar.dart';

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => {
            Navigator.pop(context),
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const Text(
          "Car Position",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      // Remove the SafeArea widget here
      body: FlutterMap(
        options: MapOptions(
          initialCenter: const LatLng(-12.069783, -77.034057),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 40.0,
                height: 40.0,
                point: const LatLng(-12.069783, -77.034057),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.blueAccent,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const CustomizedBottomNavBar(
        selectedMenu: MenuState.maps,
      ),
    );
  }
}

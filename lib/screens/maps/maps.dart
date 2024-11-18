// import 'package:autocar/enum/menu_state.dart';
// import 'package:autocar/shared/customBottomNavBar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:geolocator/geolocator.dart';

// class NavigationMap extends StatefulWidget {
//   @override
//   _NavigationMapState createState() => _NavigationMapState();
// }

// class _NavigationMapState extends State<NavigationMap> {
//   final MapController mapController = MapController();
//   LatLng? currentLocation;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     try {
//       // Request location permission
//       LocationPermission permission = await Geolocator.requestPermission();

//       if (permission == LocationPermission.denied) {
//         return;
//       }

//       // Get current position
//       Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high);

//       setState(() {
//         currentLocation = LatLng(position.latitude, position.longitude);
//       });
//     } catch (e) {
//       print("Error getting location: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Navigation Map')),
//       body: FlutterMap(
//         mapController: mapController,
//         options: MapOptions(
//           initialCenter: currentLocation ?? LatLng(0, 0),
//           initialZoom: 13.0,
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           // Add marker for current location
//           MarkerLayer(
//             markers: currentLocation != null
//                 ? [
//                     Marker(
//                       point: currentLocation!,
//                       width: 80.0,
//                       height: 80.0,
//                       child: Icon(
//                         Icons.location_pin,
//                         color: Colors.red,
//                         size: 40.0,
//                       ),
//                     ),
//                   ]
//                 : [],
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           await _getCurrentLocation();
//           if (currentLocation != null) {
//             mapController.move(currentLocation!, 15.0);
//           }
//         },
//         child: Icon(Icons.my_location),
//       ),
//       bottomNavigationBar: customizedBottomNavBar(
//         selectedMenu: MenuState.maps,
//       ),
//     );
//   }
// }

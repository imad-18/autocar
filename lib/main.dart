import 'package:autocar/screens/notification/notification_screen.dart';
import 'package:autocar/screens/statistics/stats_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/start/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magnetic car',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: '/index',
      routes: {
        '/index': (context) => const index(),
        '/home': (context) => const HomeScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/statistics': (context) => const Stats(),
        // '/maps': (context) => NavigationMap(),
      },
    );
  }
}

import 'package:autocar/screens/notification/notification_screen.dart';
import 'package:autocar/screens/statistics/statistic_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/maps/map.dart';
import 'screens/start/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magnetic car',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/index',
      routes: {
        '/index': (context) => const Index(),
        '/home': (context) => const HomeScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/statistic': (context) => const StatisticScreen(),
        '/map': (context) => const MyMap(),
      },
    );
  }
}

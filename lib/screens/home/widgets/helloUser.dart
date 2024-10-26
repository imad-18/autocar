import 'package:flutter/material.dart';

class HelloMyUser extends StatelessWidget {
  const HelloMyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Text(
          'My user',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}

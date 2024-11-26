import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String title;
  const Square({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1),
      ),
      
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontWeight: FontWeight.w400
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

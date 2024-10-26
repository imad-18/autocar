import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String title;
  final String description;
  const NotificationWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: TextButton(
        onPressed: () => {},
        style: TextButton.styleFrom(
          foregroundColor: Colors.black.withOpacity(.4),
          backgroundColor: Colors.grey.withOpacity(.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 30),
          // side: BorderSide(
          //   color: const Color.fromARGB(255, 255, 111, 0),
          //   width: 1.2,
          // ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.notifications_rounded,
              color: Color(0xFFFFD04E),
              size: 50,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

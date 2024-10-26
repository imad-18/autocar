import 'package:autocar/screens/notification/widgets/notification.dart';
import 'package:flutter/material.dart';

class NotifSection extends StatelessWidget {
  const NotifSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> Cathegories = [
      {
        'title': 'Distance reached',
        'description': 'Move the vehicle for more safety'
      },
      {
        'title': 'Battery is charged',
        'description': 'First battery is fully charged'
      },
      {
        'title': 'Max consumption',
        'description': 'You have reached ur max consuption'
      },
    ];
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, '/notification')},
              child: Text(
                'View All',
                style: TextStyle(
                  color: Color(0xFFFFD04E),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        // NotificationWidget(title: 'gagaga', description: 'gogogog'),
        ...List.generate(
          Cathegories.length,
          (index) => Column(
            children: [
              NotificationWidget(
                  title: Cathegories[index]['title']!,
                  description: Cathegories[index]['description']!),
              SizedBox(height: 8),
            ],
          ),
        ),
       
      ],
    );
  }
}

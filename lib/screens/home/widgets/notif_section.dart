import 'package:flutter/material.dart';
import '../../notification/widgets/notification.dart';

class NotifSection extends StatelessWidget {
  const NotifSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
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
            const Text(
              'Notifications',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, '/notification')},
              child: const Text(
                'View All',
                style: TextStyle(
                  color: Color(0xFFFFD04E),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // NotificationWidget(title: 'gagaga', description: 'gogogog'),
        ...List.generate(
          categories.length,
          (index) => Column(
            children: [
              NotificationWidget(
                  title: categories[index]['title']!,
                  description: categories[index]['description']!),
              const SizedBox(height: 8),
            ],
          ),
        ),
       
      ],
    );
  }
}

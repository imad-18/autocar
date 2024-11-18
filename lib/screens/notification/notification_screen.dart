import 'package:autocar/screens/notification/widgets/notification.dart';
import 'package:flutter/material.dart';
import '../../enum/menu_state.dart';
import '../../shared/customBottomNavBar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Map<String, String>> Cathegories = [
    //   {
    //     'title': 'Distance reached',
    //     'description': 'Move the vehicle for more safety'
    //   },
    //   {
    //     'title': 'Battery is charged',
    //     'description': 'First battery is fully charged'
    //   },
    //   {
    //     'title': 'Max consumption',
    //     'description': 'You have reached ur max consuption'
    //   },
    // ];
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/e1.png',
                fit: BoxFit.cover,
                alignment: AlignmentDirectional(-1, 0),
                // scale: 0.2,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: const Icon(
                            Icons.notifications_none_rounded,
                            size: 36,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFFFD04E),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Notifications',
                          style: TextStyle(
                              color: Color(0xFFFFD04E),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const NotificationWidget(
                        title: "Distance reached",
                        description: "Move the vehicle for more safety"),
                    const SizedBox(height: 25),
                    const NotificationWidget(
                        title: "Battery is charged",
                        description: "First battery is fully charged"),
                    const SizedBox(height: 25),
                    const NotificationWidget(
                        title: "Max consumption",
                        description: "You have reached ur max consuption"),
                    const SizedBox(height: 25),
                    const NotificationWidget(
                        title: "Distance reached",
                        description: "Move the vehicle for more safety"),
                    const SizedBox(height: 25),
                    const NotificationWidget(
                        title: "Battery is charged",
                        description: "First battery is fully charged"),
                    const SizedBox(height: 25),
                    const NotificationWidget(
                        title: "Max consumption",
                        description: "You have reached ur max consuption"),
                    // ...List.generate(
                    //   Cathegories.length,
                    //   (index) => NotificationWidget(
                    //       title: Cathegories[index]['title']!,
                    //       description: Cathegories[index]['description']!),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: customizedBottomNavBar(
        selectedMenu: MenuState.notifications,
      ),
    );
  }
}

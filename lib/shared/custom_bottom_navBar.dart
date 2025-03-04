import 'package:flutter/material.dart';
import '../enum/menu_state.dart';

class CustomizedBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomizedBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color.fromARGB(255, 239, 239, 239);

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: Color(0xFF42445A),
        // color: Color(0xAA42445A), // Add transparency using the AA prefix
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/home'),
            },
            icon: Icon(
              Icons.directions_car_filled_outlined,
              color: MenuState.home == selectedMenu
                  ? const Color(0xFFFF9800)
                  : inActiveIconColor,
              size: 45,
            ),
          ),
          IconButton(
            onPressed: () => {Navigator.pushNamed(context, "/statistic")},
            icon: Icon(
              Icons.analytics,
              color: MenuState.analytics == selectedMenu
                  ? Colors.orange
                  : inActiveIconColor,
              size: 45,
            ),
          ),
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, '/map')},
              icon: Icon(
                Icons.assistant_direction_rounded,
                color: MenuState.maps == selectedMenu
                    ? Colors.orange
                    : inActiveIconColor,
                size: 45,
              )),
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, '/notification')},
              icon: Icon(
                Icons.notifications_rounded,
                color: MenuState.notifications == selectedMenu
                    ? Colors.orange
                    : inActiveIconColor,
                size: 45,
              )),
        ],
      ),
    );
  }
}

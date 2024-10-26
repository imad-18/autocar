import 'package:autocar/enum/menu_state.dart';
import 'package:flutter/material.dart';

class customizedBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;
  const customizedBottomNavBar({
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
        color: Color(0xFFFFD04E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => {Navigator.pushNamed(context, '/home')},
                icon: Icon(
                  Icons.directions_car_filled_outlined,
                  color: MenuState.home == selectedMenu
                      ? Colors.orange
                      : inActiveIconColor,
                  size: 45,
                ),
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.analytics,
                  color: MenuState.analytics == selectedMenu
                      ? Colors.orange
                      : inActiveIconColor,
                  size: 45,
                ),
              ),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.assistant_direction_rounded,
                    color: MenuState.maps == selectedMenu
                        ? Colors.orange
                        : inActiveIconColor,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.notifications_rounded,
                  color: MenuState.notifications == selectedMenu
                      ? Colors.orange
                      : inActiveIconColor, size: 45,)),
            ],
          )),
    );
  }
}

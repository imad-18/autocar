import 'package:autocar/enum/menu_state.dart';
import 'package:autocar/screens/home/widgets/hello_user.dart';
import 'package:autocar/screens/home/widgets/notif_section.dart';
import 'package:autocar/screens/home/widgets/personal_infos.dart';
import 'package:flutter/material.dart';

import '../../shared/custom_bottom_navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: -220,
            left: -220,
            right: 50,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/e1.png',
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
                // scale: 0.2,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  HelloMyUser(),
                  SizedBox(height: 20),
                  Personalinfos(),
                  SizedBox(height: 15),
                  NotifSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomizedBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

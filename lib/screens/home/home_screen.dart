import 'package:autocar/enum/menu_state.dart';
import 'package:autocar/screens/home/widgets/helloUser.dart';
import 'package:autocar/screens/home/widgets/notifSection.dart';
import 'package:autocar/screens/home/widgets/personalInfos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../shared/customBottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SafeArea(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HelloMyUser(),
                    SizedBox(height: 20),
                    Personalinfos(),
                    SizedBox(height: 15),
                    NotifSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: customizedBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

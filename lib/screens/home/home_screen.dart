import 'package:autocar/enum/menu_state.dart';
import 'package:autocar/screens/home/widgets/helloUser.dart';
import 'package:autocar/screens/home/widgets/notifSection.dart';
import 'package:autocar/screens/home/widgets/personalInfos.dart';
import 'package:flutter/material.dart';

import '../../shared/customBottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
      bottomNavigationBar: customizedBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

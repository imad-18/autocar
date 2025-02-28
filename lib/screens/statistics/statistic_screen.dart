import 'package:autocar/screens/statistics/widgets/rectangle.dart';
import 'package:autocar/screens/statistics/widgets/square.dart';
import 'package:flutter/material.dart';

import '../../enum/menu_state.dart';
import '../../shared/custom_bottom_navBar.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> general = [
      {
        "title": "TEMPERATURE",
        "value": "25",
        "iconPath": "assets/icons/icon1.png"
      },
      {"title": "SPEED", "value": "60", "iconPath": "assets/icons/icon2.png"},
      {
        "title": "OVERALL STATE",
        "value": "GOOD",
        "iconPath": "assets/icons/icon3.png"
      },
      {
        "title": "PANELS POWER",
        "value": "1000W",
        "iconPath": "assets/icons/icon4.png"
      }
    ];

    List<Map<String, String>> poweringSys = [
      {"title": "PANELS"},
      {"title": "INDUCTION"},
    ];

    List<Map<String, String>> batteries = [
      {"title": "FIRST"},
      {"title": "SECONDD"},
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Center(
                child: Text(
                  "Car State",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "General",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.zero,
                childAspectRatio: 1.7,
                shrinkWrap: true, // Adds bounded height
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling in GridView
                children: [
                  ...List.generate(
                      general.length,
                      (index) => Rectangle(
                            title: general[index]['title']!,
                            value: general[index]['value']!,
                            iconPath: general[index]['iconPath']!,
                          ))
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Powering System",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.only(top: 5),
                shrinkWrap: true,
                childAspectRatio: 1.15,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ...List.generate(
                    poweringSys.length,
                    (index) => Square(title: poweringSys[index]['title']!),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Batteries",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.only(top: 5),
                shrinkWrap: true,
                childAspectRatio: 1.15,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ...List.generate(
                    batteries.length,
                    (index) => Square(title: batteries[index]['title']!),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomizedBottomNavBar(
        selectedMenu: MenuState.analytics,
      ),
    );
  }
}

// The padding at the bottom -line 47- is set to 100 to make the page 
// ..scrollable; in fact the content doesn't take all the screen space,
// ..so i have to make it shorter a bit + there is no way so that the page 
// ..gets scrolled when arriving to the bottom navbar..
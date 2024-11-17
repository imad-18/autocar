// ignore_for_file: use_super_parameters

import 'package:autocar/shared/customBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:autocar/enum/menu_state.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1011),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF0E1011),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -100,
                top: -72,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    width: 400,
                    height: 400,
                    child: Image.asset(
                      'assets/images/e1.png',
                      fit: BoxFit.cover,
                      alignment: AlignmentDirectional(-1, 0),
                      // scale: 0.2,
                    ),
                  ),
                ),
              ),
              // Title
              const Positioned(
                left: 136,
                top: 50,
                child: Text(
                  'Car State',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // General Stats Section
              Positioned(
                left: 15,
                top: 104,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'General',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    //const SizedBox(height: 20),
                    _buildStatsGrid(),
                  ],
                ),
              ),

              // Powering System Section
              Positioned(
                left: 15,
                top: 378,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Powering System',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _buildPowerBox('PANELS'),
                        const SizedBox(width: 11),
                        _buildPowerBox('INDUCTION'),
                      ],
                    ),
                  ],
                ),
              ),

              // Batteries Section
              Positioned(
                left: 15,
                top: 604,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Batteries',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _buildPowerBox('FIRST'),
                        const SizedBox(width: 11),
                        _buildPowerBox('SECOND'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: customizedBottomNavBar(
        selectedMenu: MenuState.statistics,
      ),
    );
  }

  Widget _buildStatsGrid() {
    return Container(
      width: 400,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          _buildStatCard('TEMPERATURE', '25°C', true),
          _buildStatCard('SPEED', '60km/h', false),
          _buildStatCard('OVERALL STATE', 'Good', false),
          _buildStatCard('PANELS POWER', '1000W', true),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, bool isHighlighted) {
    return Container(
      width: 196,
      height: 109,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 18, top: 0),
            width: 56,
            height: 56,
            decoration: ShapeDecoration(
              color: isHighlighted ? const Color(0xFFFFD04E) : Colors.black,
              shape: OvalBorder(
                side: isHighlighted
                    ? BorderSide.none
                    : const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
              ),
            ),
          ),
          const SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFBDBDBD),
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.6,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFFFFD04E),
                  fontSize: 24,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.48,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPowerBox(String title) {
    return Container(
      width: 193,
      height: 186,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFFBDBDBD),
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            letterSpacing: 1.44,
          ),
        ),
      ),
    );
  }
}

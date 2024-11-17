import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
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
                left: -76,
                top: -72,
                child: Container(
                  width: 276,
                  height: 276,
                  decoration: const ShapeDecoration(
                    color: Color(0x4CFFD04E),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 655,
                child: Container(
                  width: 430,
                  height: 277,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3799999952316284),
                        Colors.black
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 172,
                top: 947,
                child: SizedBox(
                  width: 86,
                  height: 86,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 86,
                          height: 86,
                          decoration: const ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.56, -0.83),
                              end: Alignment(-0.56, 0.83),
                              colors: [
                                Color(0xFFFFD04E),
                                Color(0xFFFFD35B),
                                Color(0xFFFFE7A5)
                              ],
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 3, color: Color(0xFFFEBB00)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 23,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/40x40"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 104,
                top: 932,
                child: Text(
                  'Tap To Unlock Car',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: -22,
                top: 140,
                child: SizedBox(width: 452, height: 254),
              ),
              const Positioned(
                left: 136,
                top: 35,
                child: SizedBox(
                  width: 158,
                  height: 36,
                  child: Text(
                    'Car State',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 21,
                top: 104,
                child: SizedBox(
                  width: 140,
                  height: 36,
                  child: Text(
                    'General',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 21,
                top: 378,
                child: SizedBox(
                  width: 201,
                  height: 29,
                  child: Text(
                    'Powering System',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 21,
                top: 603,
                child: SizedBox(
                  width: 201,
                  height: 29,
                  child: Text(
                    'Batteries ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -3,
                top: 832,
                child: SizedBox(
                  width: 437,
                  height: 129,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 24,
                        child: Container(
                          width: 437,
                          height: 77,
                          decoration:
                              const BoxDecoration(color: Color(0xFF1B1B20)),
                        ),
                      ),
                      Positioned(
                        left: 122,
                        top: 3,
                        child: SizedBox(
                          width: 112,
                          height: 57,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 20,
                                child: Container(
                                  width: 112,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/112x37"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 33,
                                top: 0,
                                child: Container(
                                  width: 46,
                                  height: 46,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFD04E),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 253,
                        top: 48,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 163,
                        top: 11,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 68,
                        top: 47,
                        child: SizedBox(
                          width: 35.27,
                          height: 31.92,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 48,
                        child: Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.only(
                              top: 0.02, left: 1.50, right: 1.50),
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 67,
                        top: 113,
                        child: Text(
                          'Home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 322,
                        top: 113,
                        child: Text(
                          'Settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x005E5E5E),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 231,
                        top: 113,
                        child: Text(
                          'Navigation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x005E5E5E),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 161,
                        top: 65,
                        child: Text(
                          'Stats',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 415,
                child: SizedBox(
                  width: 400,
                  height: 186,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 207,
                        top: 0,
                        child: SizedBox(
                          width: 193,
                          height: 186,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 193,
                                  height: 186,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 21,
                                top: 17,
                                child: SizedBox(
                                  width: 153,
                                  height: 17,
                                  child: Text(
                                    'INDUCTION',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 1.44,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 196,
                          height: 186,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196,
                                  height: 186,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 48,
                                top: 17,
                                child: Text(
                                  'PANELS',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 1.44,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 636,
                child: SizedBox(
                  width: 400,
                  height: 186,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 207,
                        top: 0,
                        child: SizedBox(
                          width: 193,
                          height: 186,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 40,
                                top: 17,
                                child: SizedBox(
                                  width: 113,
                                  height: 17,
                                  child: Text(
                                    'SECOND',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 1.44,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 193,
                                  height: 186,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 196,
                          height: 186,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196,
                                  height: 186,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 58,
                                top: 17,
                                child: SizedBox(
                                  width: 80,
                                  height: 17,
                                  child: Text(
                                    'FIRST ',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 1.44,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 147,
                child: SizedBox(
                  width: 400,
                  height: 225.53,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 196.32,
                          height: 109.09,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196.32,
                                  height: 109.09,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x0CA2014E),
                                        blurRadius: 30,
                                        offset: Offset(0, 9),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x07B1026B),
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93,
                                top: 29,
                                child: SizedBox(
                                  width: 83,
                                  height: 18,
                                  child: Text(
                                    'TEMPERATRE',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.60,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93,
                                top: 43,
                                child: SizedBox(
                                  width: 31,
                                  height: 32,
                                  child: Text(
                                    '25',
                                    style: TextStyle(
                                      color: Color(0xFFFFD04E),
                                      fontSize: 24,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.48,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18.40,
                                top: 25.77,
                                child: SizedBox(
                                  width: 56.44,
                                  height: 56.44,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 56.44,
                                          height: 56.44,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFD04E),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8.60,
                                        top: 8.23,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.83,
                                              vertical: 3.33),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 203.68,
                        top: 0,
                        child: SizedBox(
                          width: 196.32,
                          height: 109.09,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196.32,
                                  height: 109.09,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x0CA2014E),
                                        blurRadius: 30,
                                        offset: Offset(0, 9),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x07B1026B),
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93.25,
                                top: 29.45,
                                child: SizedBox(
                                  width: 36.81,
                                  height: 17.18,
                                  child: Text(
                                    'SPEED',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.60,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93.25,
                                top: 42.94,
                                child: SizedBox(
                                  width: 52.76,
                                  height: 40.49,
                                  child: Text(
                                    '60',
                                    style: TextStyle(
                                      color: Color(0xFFFFD04E),
                                      fontSize: 24,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.48,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -0,
                        top: 116.45,
                        child: SizedBox(
                          width: 196.32,
                          height: 109.09,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196.32,
                                  height: 109.09,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x0CA2014E),
                                        blurRadius: 30,
                                        offset: Offset(0, 9),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x07B1026B),
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93,
                                top: 28.55,
                                child: SizedBox(
                                  width: 87,
                                  height: 17,
                                  child: Text(
                                    'OVERALL STATE',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.60,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93,
                                top: 41.55,
                                child: SizedBox(
                                  width: 66,
                                  height: 41,
                                  child: Text(
                                    'Good',
                                    style: TextStyle(
                                      color: Color(0xFFFFD04E),
                                      fontSize: 24,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.48,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 203.68,
                        top: 116.45,
                        child: SizedBox(
                          width: 196.32,
                          height: 109.09,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 196.32,
                                  height: 109.09,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x0CA2014E),
                                        blurRadius: 30,
                                        offset: Offset(0, 9),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x07B1026B),
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18.41,
                                top: 26.99,
                                child: SizedBox(
                                  width: 56.44,
                                  height: 56.44,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 56.44,
                                          height: 56.44,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFD04E),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 12.91,
                                        top: 13.56,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          padding: const EdgeInsets.only(
                                            top: 1.25,
                                            left: 3.75,
                                            right: 3.75,
                                            bottom: 0.23,
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  height: double.infinity,
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93.32,
                                top: 29.55,
                                child: SizedBox(
                                  width: 92,
                                  height: 17,
                                  child: Text(
                                    'PANELS POWER',
                                    style: TextStyle(
                                      color: Color(0xFFBDBDBD),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.60,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93.32,
                                top: 42.55,
                                child: SizedBox(
                                  width: 92,
                                  height: 41,
                                  child: Text(
                                    '1000W',
                                    style: TextStyle(
                                      color: Color(0xFFFFD04E),
                                      fontSize: 24,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.48,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 237.09,
                top: 173.99,
                child: SizedBox(
                  width: 56.44,
                  height: 56.44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 56.44,
                          height: 56.44,
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFD6D6D6)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33.40,
                top: 289.21,
                child: SizedBox(
                  width: 56.44,
                  height: 56.44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 56.44,
                          height: 56.44,
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFD6D6D6)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
